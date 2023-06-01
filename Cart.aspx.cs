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
    public partial class Cart : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string customerName = Label1.Text;  // Assuming label1 is the control holding the customer name

            string sql = "SELECT Product.ProdID, Product.Name, Product.Price, Product.Picture, Cart.CustomerName FROM Product INNER JOIN Cart ON Product.Name = Cart.Item1 WHERE Cart.CustomerName = @CustomerName";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@CustomerName", customerName);

            SqlDataReader reader = cmd.ExecuteReader();
            Carti.DataSource = reader;
            Carti.DataBind();

            reader.Close();
            conn.Close();

            
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button removeFromCartButton = (Button)sender;
            string itemName = removeFromCartButton.CommandArgument.ToString();


            RemoveItem(itemName);

        }
        void RemoveItem(string itemName)
        {
            string customerName = Label1.Text;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    con.Open();
                    string updateQuery = "UPDATE Cart SET Item1 = NULL WHERE CustomerName = @CustomerName";
                    SqlCommand updateCmd = new SqlCommand(updateQuery, con);
                    updateCmd.Parameters.AddWithValue("@CustomerName", customerName);
                    updateCmd.ExecuteNonQuery();

                    // Deletion successful
                    // You can perform any additional actions here or display a success message
                }
                catch (Exception ex)
                {
                    // Handle any errors that may occur during the deletion process
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }






        }
        protected byte[] GetImageDataFromDatabase(int productId)
        {
            byte[] imageData = null;

            // TODO: Replace "ConnectionString" with your actual database connection string
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                string query = "SELECT Picture FROM Product WHERE ProdID = @ProductId";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@ProductId", productId);

                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        if (!reader.IsDBNull(reader.GetOrdinal("Picture")))
                        {
                            imageData = (byte[])reader["Picture"];
                        }
                    }
                }
                connection.Close();
            }

            return imageData;
        }
        protected string ConvertToBase64(byte[] imageData)
        {
            if (imageData != null)
            {
                return Convert.ToBase64String(imageData);
            }
            return string.Empty;
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Button checkoutButton = (Button)sender;
            string itemName = checkoutButton.CommandArgument.ToString();
            Checkout(itemName);
            Response.Redirect("Checkout.aspx");

        }
        void Checkout(string itemName)
        {
            string customerName = Label1.Text;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    con.Open();

                    // Copy CustomerName to Username field in SALE_ORDER table
                    string updateUsernameQuery = "INSERT INTO SALES(Username) VALUES (@Username)";
                    SqlCommand updateUsernameCmd = new SqlCommand(updateUsernameQuery, con);
                    updateUsernameCmd.Parameters.AddWithValue("@Username", customerName);
                    updateUsernameCmd.ExecuteNonQuery();

                    // Move Item1 value from Cart table to SALE_ORDER table
                    string moveItemQuery = "UPDATE SALES SET Item1 = (SELECT TOP 1 Item1 FROM Cart WHERE CustomerName = @CustomerName ORDER BY CartID DESC) WHERE Username = @CustomerName";
                    SqlCommand moveItemCmd = new SqlCommand(moveItemQuery, con);
                    moveItemCmd.Parameters.AddWithValue("@CustomerName", customerName);
                    moveItemCmd.ExecuteNonQuery();

                    // Delete Type value from Cart table
                    string deleteTypeQuery = "UPDATE Cart SET Type = NULL WHERE CustomerName = @CustomerName";
                    SqlCommand deleteTypeCmd = new SqlCommand(deleteTypeQuery, con);
                    deleteTypeCmd.Parameters.AddWithValue("@CustomerName", customerName);
                    deleteTypeCmd.ExecuteNonQuery();

                    // Delete other fields except CustomerName and CartID in Cart table
                    string deleteFieldsQuery = "UPDATE Cart SET Item1 = NULL, Item2 = NULL, Item3 = NULL WHERE CustomerName = @CustomerName";
                    SqlCommand deleteFieldsCmd = new SqlCommand(deleteFieldsQuery, con);
                    deleteFieldsCmd.Parameters.AddWithValue("@CustomerName", customerName);
                    deleteFieldsCmd.ExecuteNonQuery();

                    // Checkout successful
                    // You can perform any additional actions here or display a success message
                }
                catch (Exception ex)
                {
                    // Handle any errors that may occur during the checkout process
                    Response.Write("<script>alert('" + ex.Message + "');</script>");


                }
            }
        }
    }
    
}