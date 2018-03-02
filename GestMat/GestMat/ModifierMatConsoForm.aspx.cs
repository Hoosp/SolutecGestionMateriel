using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class ModifierMatConsoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mat_conso matConso = (mat_conso) Session["matConso"];

            //System.Diagnostics.Debug.WriteLine(matConso.nom);


            if (!Page.IsPostBack)
            {
                //Si l'id n'est pas nul, c'est qu'on est en train de modifier une formation existante
                //On récupère en BDD les infos de la formation à modifier et on les affiche
                if (matConso.id_mat_conso != 0)
                {
                    

                    tbx_idMatConso.Text = matConso.id_mat_conso.ToString();
                    tbx_idMatConso.Enabled = false;
                    tbx_NomMatConso.Text = matConso.nom;
                    tbx_CodeBarreMatConso.Text = matConso.code_barres;


                    /* formation formation = DtoFormation.Get(idFormation);
                     tbxNom.Text = formation.intitule;
                     tbxDuree.Text = formation.duree.ToString();
                     tbxTarif_intra.Text = formation.tarif_intra.ToString();
                     tbxTarif_unitaire.Text = formation.tarif_inter.ToString();
                     ddlNiveau.SelectedValue = formation.niveau;
                     ddlTheme.SelectedValue = formation.id_theme.ToString();*/
                }
            }
        }

        protected void Btn_OKModifierMatConso_Click(object sender, EventArgs e)
        {

            dto.DtoModifierMatConsoForm.UpdateMatConso(Convert.ToInt32(tbx_idMatConso.Text), tbx_NomMatConso.Text, tbx_CodeBarreMatConso.Text);
            Response.Redirect("~/ListeMaterielConsommable.aspx");
        }

        protected void Btn_AnnulerModifierMatConso_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListeMaterielConsommable.aspx"); 
        }



    }
}