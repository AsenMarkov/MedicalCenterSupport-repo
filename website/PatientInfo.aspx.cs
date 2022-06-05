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
    public partial class PatientInfo : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();
        }

        protected void btn_search(object sender, EventArgs e)
        {
            string qry = "select Name,Surname,Family,EGN,City,Address from Patient where Name='" + TextBox1.Text + "' ";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            info.DataSource = ds;
            info.DataBind();
            con.Close();
            pwdlb.Text = "Няма такъв пациент в базата от данни";
        }
    }
}