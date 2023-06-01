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
    public partial class Home__ADMIN_ : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();

            }
        }
    }
}