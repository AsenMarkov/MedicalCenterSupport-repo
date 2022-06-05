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
    public partial class Results : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=BOBBY-PC;Initial Catalog=Hospital1;Integrated Security=True";
            con.Open();
            if (!IsPostBack)
            {
          
                testddl.Items.Insert(0, "---Select---");
                testddl.Items.Insert(1, "Кръвни изследвания");
                testddl.Items.Insert(2, "Изследване на урина");
            }
        }
        protected void appbtn_Click(object sender, EventArgs e)
        {
            if (testddl.SelectedItem.Value == "Кръвни изследвания")
            {

                string qry = "select Blood_group, Blood_sugar,Haemoglobin,Erythrocytes,Leukocytes from Bloodtest where EGN=" + txtegn.Text + " ";
                SqlDataAdapter da = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView.DataSource = ds;
                GridView.DataBind();

            }
            else if (testddl.SelectedItem.Value == "Изследване на урина")
            {

                string qry = "select Glucose,Odor, Color, Acidity, Relative_weight from Urintest where EGN=" + txtegn.Text+ " ";
                SqlDataAdapter da = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView.DataSource = ds;
                GridView.DataBind();

            }

        }
        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}