using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class ModifierDetailsMatConsoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            placer placer = (placer)Session["placer"];

            //System.Diagnostics.Debug.WriteLine(matConso.nom);

             

            if (!Page.IsPostBack)
            {
                //Si l'id n'est pas nul, c'est qu'on est en train de modifier une formation existante
                //On récupère en BDD les infos de la formation à modifier et on les affiche
                if (placer.id_mat_conso != 0 || placer.id_site_de_stockage != 0)
                {


                    tbx_idMatConso.Text = placer.id_mat_conso.ToString();
                    tbx_idMatConso.Enabled = false;
                    tbx_NomMatConso.Text = placer.mat_conso.nom;
                    tbx_NomMatConso.Enabled = false;
                    ddl_nomSdS.SelectedIteml = placer.site_de_stockage.nom;
                    tbx_Qte.Text = placer.quantite.ToString();


                }
            }
        }

        protected void Btn_OKModifierDetailsMatConso_Click(object sender, EventArgs e)
        {
         
            dto.DtoPlacer.UpdateDetailsMatConso(Convert.ToInt32(tbx_idMatConso.Text), Convert.ToInt32(ddl_nomSdS.SelectedValue), Convert.ToInt32(tbx_Qte.Text));
            Response.Redirect(string.Format("~/DetailsMatConso.aspx?idMatConso={0}", Convert.ToInt32(tbx_idMatConso.Text)));
        }

        protected void Btn_AnnulerModifierDetailsMatConso_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("~/DetailsMatConso.aspx?idMatConso={0}", Convert.ToInt32(tbx_idMatConso.Text)));
        }
    }
}