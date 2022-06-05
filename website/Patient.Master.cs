using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Patient : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           lbl1.Text = Session["New"].ToString();
        }
    }
}