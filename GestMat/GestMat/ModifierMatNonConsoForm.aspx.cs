using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class ModifierMatNonConsoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mat_non_conso matNonConso = (mat_non_conso)Session["matNonConso"];

            //System.Diagnostics.Debug.WriteLine(matConso.nom);


            if (!Page.IsPostBack)
            {
                //Si l'id n'est pas nul, c'est qu'on est en train de modifier une formation existante
                //On récupère en BDD les infos de la formation à modifier et on les affiche
                if (matNonConso.id_mat_non_conso != 0)
                {

                    String[] listeChoixEtat = dao.Dao.getEnumValues("mat_non_conso", "etat");

                    int tailleTab = listeChoixEtat.Length;

                    for (int i = 0; i < tailleTab; i++)
                    {
                        ddl_Etat.Items.Insert(i, listeChoixEtat[i]);
                    }


                    tbx_idMatNonConso.Text = matNonConso.id_mat_non_conso.ToString();
                    tbx_idMatNonConso.Enabled = false;
                    tbx_NomMatNonConso.Text = matNonConso.nom;
                    ddl_Etat.SelectedValue = matNonConso.etat;
                    ddl_SalleMatNonConso.SelectedValue = matNonConso.id_salle.ToString();



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

        protected void Btn_OKModifierMatNonConso_Click(object sender, EventArgs e)
        {

            dto.DtoModifierMatNonConsoForm.UpdateMatNonConso(Convert.ToInt32(tbx_idMatNonConso.Text), tbx_NomMatNonConso.Text, ddl_Etat.SelectedValue, Convert.ToInt32(ddl_SalleMatNonConso.SelectedValue));
            Response.Redirect("~/ListeMaterielNonConsommable.aspx");
        }

        protected void Btn_AnnulerModifierMatNonConso_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListeMaterielNonConsommable.aspx");
        }



    }
}
