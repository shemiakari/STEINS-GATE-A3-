using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A3
{
    public partial class Checkout : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }
            
            string customerName = Label1.Text;  // Assuming label1 is the control holding the customer name
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM Product WHERE Name IN (SELECT Item1 FROM SALES WHERE Username = @Username )";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Username", customerName);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string productName = reader["Name"].ToString();
                string price = reader["Price"].ToString();
                lblName.Text = productName;
                lblPrice.Text = price;
                lblTotal.Text = price;
            }
            reader.Close();
            conn.Close();
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            CompletePurchase();
            Response.Redirect("Orders.aspx");

        }
        void CompletePurchase()
        {
            string customerName = Label1.Text;

            try
            {
                SqlConnection con = new SqlConnection(connStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE SALES SET FirstName = @FirstName, LastName = @LastName, Address = @Address, OrderDate = CONVERT(date, GETDATE()), OrderStatus='Pending' WHERE Username = @Username AND OrderID = (SELECT TOP 1 OrderID FROM SALES WHERE Username = @Username ORDER BY OrderID DESC)", con);
                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 255).Value = txtFirstname.Text.Trim();
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 255).Value = txtLastname.Text.Trim();
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 255).Value = txtAddress.Text.Trim();
                    cmd.Parameters.AddWithValue("@Username", customerName);
                    cmd.ExecuteNonQuery();

                    // Second SQL statement
                    SqlCommand cmd2 = new SqlCommand("UPDATE SALES SET Total = P.Price FROM SALES S JOIN Product P ON S.Item1 = P.Name WHERE S.Username = @Username AND S.OrderID = (SELECT TOP 1 OrderID FROM SALES WHERE Username = @Username ORDER BY OrderID DESC)", con);
                    cmd2.Parameters.AddWithValue("@Username", customerName);
                    cmd2.ExecuteNonQuery();

                    con.Close();
                    Response.Write("<script>alert('Purchase complete!');</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}