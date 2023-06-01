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
    public partial class Log_In : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != null)
            {
                Session["username"] = txtUsername.Text;
            }
            try
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT* FROM tblUser WHERE UserName='" + username + "' AND Password='" + password + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        if (dr.GetValue(5).ToString() == "Customer")
                        {
                            Response.Redirect("Home (USER).aspx");
                        }
                        else if (dr.GetValue(5).ToString() == "Administrator")
                        {
                            Response.Redirect("Home (ADMIN).aspx");
                        }
                        else if (dr.GetValue(5).ToString() == "Employee")
                        {
                            Response.Redirect("Home (EMPLOYEE).aspx");
                        }
                        



                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid User Credientials'); </script >");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            
        }
    }
}
