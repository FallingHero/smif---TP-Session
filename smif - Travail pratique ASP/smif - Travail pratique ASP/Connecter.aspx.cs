using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smif___Travail_pratique_ASP
{
    public partial class Connecter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Voyage"] != null)
            {
                lb_nom.Text = Request.Cookies["Voyage"]["Nom"];
            }
        }
    }
}