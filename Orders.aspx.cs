using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;


namespace A3
{
    public partial class Orders : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SG"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();

            }
            string customerName = Label1.Text;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT OrderID, OrderStatus, OrderDate, Username, FirstName, LastName, Item1, Address, Total FROM SALES WHERE Username=@Username", conn);
            cmd.Parameters.AddWithValue("@Username", customerName);
            SqlDataReader reader = cmd.ExecuteReader();
            Sales.DataSource = reader; // rather than iterating manually, you assign the datasource to the repeater. 
            Sales.DataBind();

            reader.Close();
            conn.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "SELECT OrderID, OrderDate, Username, FirstName, LastName, Address, Item1, Total, OrderStatus FROM SALES WHERE Username=@Username";

            // Create a new document
            Document document = new Document();
            // Create a new PDF writer
            PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(Server.MapPath("invoice.pdf"), FileMode.Create));

            // Open the document
            document.Open();

            // Set the font for the headings
            Font headingFont = FontFactory.GetFont("Poppins", 36, Font.BOLD);

            // Add the "INVOICE" heading at the top
            Paragraph invoiceHeading = new Paragraph("INVOICE", headingFont);
            invoiceHeading.Alignment = Element.ALIGN_CENTER;
            document.Add(invoiceHeading);

            // Get the username from Label1.Text
            string username = Label1.Text;

            // Execute the SQL query to retrieve the data
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    int orderID = reader.GetInt32(0);
                    string orderDate = reader.GetDateTime(1).ToString("yyyy-MM-dd");
                    string firstName = reader.GetString(3);
                    string lastName = reader.GetString(4);
                    string address = reader.GetString(5);
                    string item = reader.GetString(6);
                    decimal price = reader.GetDecimal(7);
                    string orderStatus = reader.GetString(8);

                    // Add the content to the PDF
                    document.Add(new Paragraph("Order ID: " + orderID));
                    document.Add(new Paragraph("Order Date: " + orderDate));
                    document.Add(new Paragraph("Username: " + username));
                    document.Add(new Paragraph("First Name: " + firstName));
                    document.Add(new Paragraph("Last Name: " + lastName));
                    document.Add(new Paragraph("Address: " + address));
                    document.Add(new Paragraph("Product: " + item));
                    document.Add(new Paragraph("Total: R" + price));
                    document.Add(new Paragraph("Status: " + orderStatus));
                }

                reader.Close();
            }

            // Close the document
            document.Close();

            // Redirect to the PDF file
            Response.Redirect("invoice.pdf");
        }
        


    }
}