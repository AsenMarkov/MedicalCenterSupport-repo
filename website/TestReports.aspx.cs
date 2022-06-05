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
    public partial class TestReports : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        
    protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();

            if (!Page.IsPostBack)
            {
                string qry = "select Name from Test_Reports";
                SqlDataAdapter da = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "Test_Reports");
                PID.DataSource = ds;
                PID.DataTextField = "Name";
                PID.DataBind();
                con.Close();
                PID.Items.Insert(0, "...Select...");
            }

                if (!IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;


            }
        }
        protected void btn_ok(object sender, EventArgs e)
        {
        
            if (PID.SelectedValue == "Кръвни изследвания")
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel2.Visible = true;
            }
        }
        protected void btn_save(object sender, EventArgs e)
        {
            if (Panel1.Visible == true)
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into Bloodtest(EGN,Name,Type_of_test,Blood_group, Blood_sugar,Haemoglobin,Erythrocytes,Leukocytes)values(@EGN,@Name,@Type_of_test,@Blood_group,@Blood_sugar,@Haemoglobin,@Erythrocytes,@Leukocytes)";

                cmd.Parameters.AddWithValue("@EGN", txtEgn.Text);
                cmd.Parameters.AddWithValue("@Name", pntxt.Text);
                cmd.Parameters.AddWithValue("@Type_of_test", PID.Text);
                cmd.Parameters.AddWithValue("@Blood_group", grup.Text);
                cmd.Parameters.AddWithValue("@Blood_sugar", bstxt.Text);
                cmd.Parameters.AddWithValue("@Hemoglobin", hmtxt.Text);
                cmd.Parameters.AddWithValue("@Erythrocytes", suatxt.Text);
                cmd.Parameters.AddWithValue("@Leukocytes", rd1txt.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();

               
            }
            else if (Panel2.Visible == true)
            {
                cmd.CommandText = "insert into Urintest(EGN,Name,Type_of_test,Glucose,Odor, Color, Acidity, Relative_weight)" +
                    "values(@EGN,@Name,@Type_of_test,@Glucose,@Odor,@Color,@Acidity,@Relative_weight)";

                cmd.Parameters.AddWithValue("@EGN", txtEgn.Text);
                cmd.Parameters.AddWithValue("@Name", pntxt.Text);
                cmd.Parameters.AddWithValue("@Type_of_test", PID.Text);
                cmd.Parameters.AddWithValue("@Glucose", gltxt.Text);
                cmd.Parameters.AddWithValue("@Odor", odtxt.Text);
                cmd.Parameters.AddWithValue("@Color", colortxt.Text);
                cmd.Parameters.AddWithValue("@Acidity", clartxt.Text);
                cmd.Parameters.AddWithValue("@Relative_weight", sgtxt.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }
        protected void btn_cancel(object sender, EventArgs e)
        {
            Response.Redirect("TestReports.aspx");
        }
    }
}