using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class ListeMaterielNonConsommable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String[] listeChoixEtat = dao.Dao.getEnumValues("mat_non_conso", "etat");

            int tailleTab = listeChoixEtat.Length;

            for(int i = 0; i<tailleTab; i++)
            {
                ddl_Etat.Items.Insert(i, listeChoixEtat[i]);
            }
            
        }


        protected void BtnGrid(object sender, GridViewCommandEventArgs e)
        {


            if (e.CommandName == "SupprimerMatNonConso")
            {
                int idMatNonConso = Convert.ToInt32(e.CommandArgument);

                dto.DtoListeMaterielNonConsommable.SuppMatNonConso(idMatNonConso);
                gvMaterielNonConsommable.DataBind();
                Response.Redirect(Request.RawUrl);
                //System.Diagnostics.Debug.WriteLine(idMatConso);
            }

            //System.Diagnostics.Debug.WriteLine("Yo");

            if (e.CommandName == "ModifierMatNonConso")
            {
                int idMatNonConso = Convert.ToInt32(e.CommandArgument);

                mat_non_conso matNonConso = dto.DtoListeMaterielNonConsommable.Get(idMatNonConso);

                //Response.Redirect(string.Format("~/ModifierMatConsoForm?matConso={0}", matCons));

                Session["matNonConso"] = matNonConso;  // saves to session
                Response.Redirect("~/ModifierMatNonConsoForm.aspx");
            }




        }

        protected void BtnAjouterMatNonConso_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(ddl_Etat.SelectedValue); 
            dto.DtoListeMaterielNonConsommable.AddMatNonConso(tbx_Nom.Text, ddl_Etat.SelectedValue, Convert.ToInt32(ddl_Salle.SelectedValue));
            gvMaterielNonConsommable.DataBind();
            Response.Redirect(Request.RawUrl);
            
        }





    }
}
