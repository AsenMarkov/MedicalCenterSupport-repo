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
    public partial class info : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=Hospital1.mdf;Integrated Security=True";
            con.Open();
        }
        protected void btn_search(object sender, EventArgs e)
        {
            SqlDataAdapter Da = new SqlDataAdapter("select loginID,Password,Name,EGN,Phone from Patient where EGN=" + TextBox1.Text + "", con);
            //SqlCommandBuilder Cmd = new SqlCommandBuilder(Da);
            DataSet Ds = new DataSet();
            Da.Fill(Ds, "Patient");
            info1.DataSource = Ds.Tables[0];
            info1.DataBind();   
        }
        protected void info_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}