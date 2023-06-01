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
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {
        string connStr = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        public void ProcessRequest(HttpContext context)
        {
            string imageId = context.Request.QueryString["ProdID"].ToString();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("SELECT Picture FROM Product WHERE ProdID=" + imageId, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.ContentType = "image/jpg";
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

    }
}