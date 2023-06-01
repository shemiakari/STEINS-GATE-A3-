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
    public partial class Home__USER_ : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["username"] != null)
                {
                    Label1.Text = Session["username"].ToString();

                }

            string customerName = Label1.Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                {
                    con.Open();
                    string query = "IF NOT EXISTS (SELECT 1 FROM Cart WHERE CustomerName = @CustomerName) " +
                                   "BEGIN " +
                                   "    INSERT INTO Cart (CustomerName) VALUES (@CustomerName) " +
                                   "END";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@CustomerName", customerName);
                    cmd.ExecuteNonQuery();

                    // Insertion successful
                    // You can perform any additional actions here or display a success message
                }
                catch (Exception ex)
                {
                    // Handle any errors that may occur during the insertion process
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }


        }


    }
}