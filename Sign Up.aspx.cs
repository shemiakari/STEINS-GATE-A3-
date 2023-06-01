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
    public partial class Sign_Up : System.Web.UI.Page
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
            if (CheckUserNameExist())
            {
                Response.Write("<script>alert('User Already Exists');</script>");
            }
            else
            {
                SignUpNewUser();//calls method to allow user to sign up
            }
        }
        bool CheckUserNameExist()// method to check if user name exists
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT* FROM tblUser WHERE UserName='" + txtUsername.Text.Trim() + "';", con);
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void SignUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO tblUser (UserName, Password, Email, UserType, Active) VALUES (@Username, @Password, @Email, @Role,'Y')", con);
                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 255).Value = txtUsername.Text.Trim();
                    cmd.Parameters.Add("@Role", SqlDbType.VarChar, 255).Value = DropDownList1.SelectedItem.Text;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar, 255).Value = txtPassword.Text.Trim();
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 255).Value = txtEmail.Text.Trim();

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Sign Up successful, you can now log in');</script>");

                    if (DropDownList1.SelectedItem.Text == "Customer")
                    {
                        Response.Redirect("Home (USER).aspx");
                    }
                    else if (DropDownList1.SelectedItem.Text == "Employee")
                    {
                        Response.Redirect("Home (EMPLOYEE).aspx");
                    }
                    else if (DropDownList1.SelectedItem.Text == "Administrator")
                    {
                        Response.Redirect("Home (ADMIN).aspx");

                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

    }
}
