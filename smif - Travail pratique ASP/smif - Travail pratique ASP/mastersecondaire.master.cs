using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smif___Travail_pratique_ASP
{
    public partial class mastersecondaire : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Threading.Thread.CurrentThread.CurrentUICulture.ToString() == "en-US")
            {
                phil.ImageUrl = "~/philenn.jpg";
            }
        }

        protected void pitts_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pittsburg.aspx");
        }

        protected void ny_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/NewYork.aspx");
        }

        protected void phil_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Philadelphie.aspx");
        }
    }
}