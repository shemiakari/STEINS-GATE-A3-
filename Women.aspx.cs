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
    public partial class Women : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM Product WHERE Type = 'Women' ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            Products.DataSource = reader; // rather than iterating manually, you assign the datasource to the repeater. 
            Products.DataBind();

            reader.Close();
            conn.Close();
        }
        
        protected byte[] GetImageData(int productId)
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

        }
    }
}