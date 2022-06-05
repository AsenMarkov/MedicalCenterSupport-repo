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
    public partial class Doctors1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();


            if (!Page.IsPostBack)
            {
                ddl.Items.Insert(0, "...Select...");
                ddl1.Items.Insert(0, "...Select...");
            }
          
        }
        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            sdtxt.Text = (Calendar.SelectedDate.ToShortDateString() + " " + chastxt.Text);
        }

        protected void btn_save(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Schedule(PatientName,DateAndTime,Doctor,Specialty) " +
                "values(@PatientName,@DateAndTime,@Doctor,@Specialty)";
            cmd.Parameters.AddWithValue("@PatientName", pntxt.Text);
            cmd.Parameters.AddWithValue("@DateAndTime", sdtxt.Text);
            cmd.Parameters.AddWithValue("@Doctor", ddl1.Text);
            cmd.Parameters.AddWithValue("@Specialty", ddl.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            pwdlb.Text = "Часът е запазен";
        }

        protected void pidddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void sdtxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_cancel(object sender, EventArgs e)
        {
            Response.Redirect("Doctors1.aspx");
        }
        protected void chastxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}