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
    public partial class MEN : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM Product WHERE Type = 'Men' ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            Products.DataSource = reader; // rather than iterating manually, you assign the datasource to the repeater. 
            Products.DataBind();

            reader.Close();
            conn.Close();
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();

            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {

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
        protected void Products_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connStr))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Cart (Name) VALUES (@Name)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@FirstName", (Products.FindControl("lblItemName") as Label).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        Response.Write("Item added to Cart.");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
        protected void btnReturn_Click(object sender, EventArgs e)
        {

            Response.Redirect("Products.aspx;");

        }
        protected void btnCart_Click(object sender, EventArgs e)
        {

            Response.Redirect("Cart.aspx");

        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            Button addToCartButton = (Button)sender;
            string itemName = addToCartButton.CommandArgument.ToString();


            AddItem1(itemName);
            // Step 6: Redirect or perform any necessary action after adding the item to the cart

        }

        void AddItem1(string itemName)
        {
            try
            {
                SqlConnection con = new SqlConnection(connStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                    // Check if Item1 field already has a value
                    SqlCommand checkCmd = new SqlCommand("SELECT Item1 FROM Cart WHERE CustomerName = @CustomerName", con);
                    checkCmd.Parameters.Add("@CustomerName", SqlDbType.VarChar, 255).Value = Label1.Text;
                    object existingItem = checkCmd.ExecuteScalar();

                    if (existingItem == null || existingItem == DBNull.Value)
                    {
                        // Item1 field is empty, proceed with adding the item
                        SqlCommand cmd = new SqlCommand("UPDATE Cart SET Item1 = @Item1, Type = 'Men' WHERE CustomerName = @CustomerName", con);
                        cmd.Parameters.Add("@CustomerName", SqlDbType.VarChar, 255).Value = Label1.Text;
                        cmd.Parameters.Add("@Item1", SqlDbType.VarChar, 255).Value = itemName;

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Item successfully added to cart.');</script>");
                    }
                    else
                    {
                        // Item1 field already has a value, display appropriate message
                        con.Close();
                        Response.Write("<script>alert('Your cart is full. Proceed to checkout.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        void AddItem2()
        {
            try
            {
                SqlConnection con = new SqlConnection(connStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Cart (Item2,Type) VALUES (@Item2,'Men')", con);
                    cmd.Parameters.Add("@Item2", SqlDbType.VarChar, 255).Value = Eval("Name").ToString();


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Item succesfully added to cart.');</script>");


                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        void AddItem3()
        {
            try
            {
                SqlConnection con = new SqlConnection(connStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Cart (Item3,Type) VALUES (@Item3,'Men')", con);
                    cmd.Parameters.Add("@Item3", SqlDbType.VarChar, 255).Value = Eval("Name").ToString();

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Item succesfully added to cart.');</script>");


                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        bool CheckItem1Availability()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Cart WHERE Item1 IS NULL;", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        bool CheckItem1Exists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Cart WHERE Item1 IS NOT NULL;", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        bool CheckItem2Exists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Cart WHERE Item2 IS NOT NULL;", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        bool CheckItem3Exists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Cart WHERE Item3 IS NOT NULL;", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


    }
}