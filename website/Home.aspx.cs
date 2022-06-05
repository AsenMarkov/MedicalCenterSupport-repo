using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          


        }
        private string EmpPassword(string sqlText, SqlConnection openConnection)
        {
            object obj = null;
            using (var cmd = new System.Data.SqlClient.SqlCommand(sqlText, openConnection))
            {
                using (var r = cmd.ExecuteReader())
                {
                    if (r.Read())
                    {
                        obj = r.GetValue(0);
                    }
                }
            }
            if ((obj != null) && (obj != DBNull.Value))
            {
                return obj.ToString().Replace(" ", "");
            }
            return null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["Hospital1ConnectionString"].ConnectionString))
            {
                Session["New"] = null;
                try
                {
                    con.Open();
                    var sqlText = String.Format("SELECT Password FROM dbo.Patient WHERE loginID='{0} ';", lidtxt.Text);
                    var sqlResult = EmpPassword(sqlText, con);
                    if (sqlResult == pwdtxt.Text)
                    {
                        Session["New"] = lidtxt.Text;
                        Response.Redirect("info.aspx");



                    }
                    else
                    {
                        sqlText = string.Format("Select Password from dbo.Doctor where DoctorID='{0} ';", lidtxt.Text);
                        sqlResult = EmpPassword(sqlText, con);
                        if (sqlResult == pwdtxt.Text)
                        {
                            Session["New"] = lidtxt.Text;
                            Response.Redirect("Schedule.aspx");


                        }

                        else
                        {
                            pwdlb.Text = "Enter valid UserName/Password";
                        }
                    }
                }

                finally
                {
                    con.Close();
                }
            }
        }
    }
}

