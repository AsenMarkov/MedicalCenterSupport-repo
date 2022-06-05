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
    public partial class forgetPassword : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string un, name, pw;
            un = sdtxt.Text;
            name = pntxt.Text;
            pw = chastxt.Text;

        }
    }
}