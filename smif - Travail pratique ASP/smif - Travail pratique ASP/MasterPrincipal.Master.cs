using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smif___Travail_pratique_ASP
{
    public partial class MasterPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(System.Threading.Thread.CurrentThread.CurrentUICulture.ToString()=="en-US")
            {
                acceuil.ImageUrl = "~/Home.jpg";
                membres.ImageUrl = "~/membreen.jpg";
                date.ImageUrl = "~/dateen.jpg";
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Acceuil.aspx");
        }

        protected void choix_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Calendrier.aspx");
        }

        protected void membres_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Basedonner.aspx");
        }

        protected void photos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pittsburg.aspx");
        }
    }
}