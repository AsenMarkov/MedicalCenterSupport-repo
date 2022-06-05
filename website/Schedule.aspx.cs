using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Schedule : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();
           
        }
        protected void btn_reg(object sender, EventArgs e)
        {
           
            //string str = doctorddl.SelectedItem.ToString();
            string qry = "select PatientName, DateAndTime from Schedule where Doctor='" + TextBox1.Text  + "' ";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Schedule");
            info.DataSource = ds;
            info.DataBind();
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void info_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}