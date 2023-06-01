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
    public partial class Manage_Customers__EMPLOYEE_ : System.Web.UI.Page
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

            SqlCommand cmd = new SqlCommand("SELECT OrderID, OrderStatus, OrderDate, Username, FirstName, LastName, Item1, Address, Total FROM SALES", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            Sales.DataSource = reader; // rather than iterating manually, you assign the datasource to the repeater. 
            Sales.DataBind();

            reader.Close();
            conn.Close();


        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();

            // Execute the search query and filter the data based on the provided username
            DataTable filteredData = GetFilteredSalesData(username);

            // Bind the filtered data to the Sales repeater
            Sales.DataSource = filteredData;
            Sales.DataBind();


        }
        private DataTable GetFilteredSalesData(string username)
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string sqlQuery = "SELECT * FROM SALES WHERE Username = @Username";
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);
                    cmd.Parameters.AddWithValue("@Username", username);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    con.Open();
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

            return dt;
        }
        private DataTable GetDateData(string date)
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string sqlQuery = "SELECT * FROM SALES WHERE OrderDate = @Date";
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);
                    cmd.Parameters.AddWithValue("@Date", date);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    con.Open();
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

            return dt;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtDate.Text = "";

            // Call the method to retrieve the normal data
            DataTable normalData = GetNormalSalesData();

            // Bind the normal data to the Sales repeater
            Sales.DataSource = normalData;
            Sales.DataBind();
        }
        private DataTable GetNormalSalesData()
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string sqlQuery = "SELECT * FROM SALES";
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    con.Open();
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = txtDate.Text.Trim();

            // Execute the search query and filter the data based on the provided username
            DataTable filteredData = GetDateData(date);

            // Bind the filtered data to the Sales repeater
            Sales.DataSource = filteredData;
            Sales.DataBind();

        }
    }
}