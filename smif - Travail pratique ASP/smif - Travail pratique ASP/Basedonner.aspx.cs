using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace smif___Travail_pratique_ASP
{
    public partial class Basedonner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void img_ajouter_Click(object sender, ImageClickEventArgs e)
        {
            //Ajoute une entrée à la base de donnée
            using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\smif-BD.mdf;Integrated Security=True"))
            {
                SqlCommand CmdSql = new SqlCommand("INSERT INTO [Personne] (ID, Nom, Email) VALUES (@ID, @Nom, @Email)", conn);
                conn.Open();
                CmdSql.Parameters.AddWithValue("@ID", tb_id.Text);
                CmdSql.Parameters.AddWithValue("@Nom", tb_nom.Text);
                CmdSql.Parameters.AddWithValue("@Email", tb_email.Text);
                try
                {
                    CmdSql.ExecuteNonQuery();
                }
                catch (System.Data.SqlClient.SqlException)
                {
                    //Message d'erreur si la commande ne marche pas
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Le Id est déja utilisé ou invalide')</script>");
                }

                conn.Close();
            }
        }
    }
}