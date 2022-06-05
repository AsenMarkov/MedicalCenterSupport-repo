using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace website
{
    
    public partial class Registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=Hospital1.mdf;Integrated Security=True";
            con.Open();
        }
        protected void btn_reg(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Patient(loginID,Password,Comfirm_Password,Name,Surname,Family,EGN,City,Address,Phone," +
                "Citizenship,Family_status,Workplace,Position,Work_Address)values(@loginID,@Password,@Comfirm_Password,@Name,@Surname,@Family,@EGN,@City,@Address,@Phone," +
                "@Citizenship,@Family_status,@Workplace,@Position,@Work_Address)";

            cmd.Parameters.AddWithValue("@EGN", txtegn.Text);
            cmd.Parameters.AddWithValue("@Name", txtime.Text);
            cmd.Parameters.AddWithValue("@Surname",txtprez.Text);
            cmd.Parameters.AddWithValue("@Family", TextBox7.Text);
            cmd.Parameters.AddWithValue("@City", txtgrad.Text);
            cmd.Parameters.AddWithValue("@Address", txtadres.Text);
            cmd.Parameters.AddWithValue("@Phone", txtphon.Text);
            cmd.Parameters.AddWithValue("@Citizenship", txtgrajd.Text);
            cmd.Parameters.AddWithValue("@Family_status", DropDownList4.Text);
            cmd.Parameters.AddWithValue("@loginID", txtlog.Text);
            cmd.Parameters.AddWithValue("@Password", txtpass.Text);
            cmd.Parameters.AddWithValue("@Comfirm_Password", txtcompas.Text);
            cmd.Parameters.AddWithValue("@Workplace", txtmest.Text);
            cmd.Parameters.AddWithValue("@Work_Address", txtadr.Text);
            cmd.Parameters.AddWithValue("@Position", txtdluj.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            pwdlb.Text = "Успешна регистрация!";
        }
        protected void btn_set(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btn_doctor(object sender, EventArgs e)
        {
            Response.Redirect("LZ.aspx");
        }

        protected void txtpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtcompas_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}