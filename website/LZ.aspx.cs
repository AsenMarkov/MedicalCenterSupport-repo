using System;
using System.Data.SqlClient;

namespace website
{
    public partial class LZ : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-FG42KPI;Initial Catalog=hospital1;Integrated Security=True";
            con.Open();
        }
        protected void subbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Doctor(DoctorID,Password,Comfirm_Passwors,Name,Family,UIN" +
                ",Phone,Email,Code_spec,Name_spec) values(@DoctorID,@Password,@Comfirm_Passwors,@Name,@Family,@UIN," +
                "@Phone,@Email,@Code_spec,@Name_spec)";

            cmd.Parameters.AddWithValue("@Name", nametxt.Text);
            cmd.Parameters.AddWithValue("@Family", famtxt.Text);
            cmd.Parameters.AddWithValue("@UIN", txtuin.Text);
            cmd.Parameters.AddWithValue("@DoctorID", lidtxt.Text);
            cmd.Parameters.AddWithValue("@Password", pwdtxt.Text);
            cmd.Parameters.AddWithValue("@Comfirm_Passwors", conpwdtxt.Text);
            cmd.Parameters.AddWithValue("@Code_spec", txtspec.Text);
            cmd.Parameters.AddWithValue("@Name_spec", txtspec1.Text);
            cmd.Parameters.AddWithValue("@Phone", phtxt.Text);
            cmd.Parameters.AddWithValue("@Email", emtxt.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            pwdlb.Text = "Успешна регистрация!";

        }
        protected void Resbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LZ.aspx");
        }
        protected void canbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}