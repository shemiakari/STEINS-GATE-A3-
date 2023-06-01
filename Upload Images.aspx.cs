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
    public partial class Upload_Images : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
            
        }

        private void SaveImage()
        {
            if (FileUpload1.HasFile)
            {
                int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = FileUpload1.PostedFile;
                image.InputStream.Read(imgarray, 0, imagefilelenth);
                SqlConnection con = new SqlConnection(connStr);
                SqlCommand cmd = new SqlCommand("INSERT INTO Product(Name, Type, Price, Picture) VALUES (@Name, @Type, @Price, @Image)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@Name", SqlDbType.VarChar).Value = TextBox1.Text;
                cmd.Parameters.AddWithValue("@Type", SqlDbType.VarChar).Value = TextBox2.Text;
                cmd.Parameters.AddWithValue("@Price", SqlDbType.VarChar).Value = TextBox3.Text;
                cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;
                cmd.ExecuteNonQuery();
                BindGrid();
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SaveImage();
        }
        public void BindGrid()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("SELECT ProdID, Name, Picture FROM Product", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gv.DataSource = dr;
            gv.DataBind();
        }
    }
}