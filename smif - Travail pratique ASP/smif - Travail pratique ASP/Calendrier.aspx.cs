using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smif___Travail_pratique_ASP
{
    public partial class Calendrier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label1.Visible = false;
            if (!IsPostBack)
            {
                if (Request.Cookies["Date"] != null)
                {
                    //Lire un cookie
                    calendrier.SelectedDate = Convert.ToDateTime(Request.Cookies["Date"]["Date"]);
                }
            }
        }

        protected void img_submit_Click(object sender, ImageClickEventArgs e)
        {
            //Pour que la date s'affiche seulement une fois meme si l'usager valide plusieurs fois.
            int index = label1.Text.LastIndexOf(":");
            if (index > 0)
                label1.Text = label1.Text.Substring(0, index + 1);
            Response.Cookies["Date"]["Date"] = calendrier.SelectedDate.ToShortDateString();
            Session["message"] = calendrier.SelectedDate.ToShortDateString();
            label1.Text = label1.Text + Session["message"].ToString();
            label1.Visible = true;
        }
    }
}