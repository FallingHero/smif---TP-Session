using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smif___Travail_pratique_ASP
{
    public partial class Acceuil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Voyage"] != null)
                {
                    //redirige vers une autre page
                    Response.Redirect("~/Connecter.aspx");
                }
        }

       
        protected void img_submit_Click(object sender, ImageClickEventArgs e)
        {
            //Enregistre un cookie
            Response.Cookies["Voyage"]["Nom"] = tb_Nom.Text;
            Response.Cookies["Voyage"]["email"] = tb_email.Text;
            Response.Cookies["Voyage"].Expires = DateTime.MaxValue;

            Response.Redirect("~/Connecter.aspx");
        }
    }
}