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
    public partial class DEPT : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM DEPT ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            departments.DataSource = reader; // rather than iterating manually, you assign the datasource to the repeater. 
            departments.DataBind();

            reader.Close();
            conn.Close();
        }
    }
}