using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4_9._3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["strconn"].ConnectionString);
        protected void btnSave_Click(object sender, EventArgs e)
        {
            byte[] imgp = flImage.FileBytes;
            Session["img"] = imgp;
            SqlCommand cmd = new SqlCommand("insert into Product(ProductImage,ProductName,Price,Description) " +
                "values(@pimg,@pname,@price,@pdec)", conn);
            cmd.Parameters.AddWithValue("@pimg", imgp);
            cmd.Parameters.AddWithValue("@pname", txtProductName.Text);
            cmd.Parameters.AddWithValue("@price", txtPrice.Text);
            cmd.Parameters.AddWithValue("@pdec", txtDesc.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("WebForm2.aspx");
        }
    }
}