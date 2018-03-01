using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnGrid(object sender, GridViewCommandEventArgs e)
        {

            //int index = e.CommandArgument;

            int idMatConso = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "SupprimerMatConso")
            {

                dto.DtoListeMaterielConsommable.SuppMatConso(idMatConso);
                gvMaterielConsommable.DataBind();
                Response.Redirect(Request.RawUrl);
                //System.Diagnostics.Debug.WriteLine(idMatConso);
            }

            //System.Diagnostics.Debug.WriteLine("Yo");
            
           else if (e.CommandName == "ModifierMatConso")
            {
                mat_conso matConso = dto.DtoListeMaterielConsommable.Get(idMatConso);

                //Response.Redirect(string.Format("~/ModifierMatConsoForm?matConso={0}", matCons));
                
                Session["matConso"] = matConso;  // saves to session
                Response.Redirect("~/ModifierMatConsoForm.aspx");
            }

            else if (e.CommandName == "DemanderMatConso")
            {
                Response.Redirect(string.Format("~/FormulairDemandesConsommables.aspx?id_mat_conso={0}", idMatConso));
            }


        }

        protected void BtnAjouterMatConso_Click(object sender, EventArgs e)
        {
            
            dto.DtoListeMaterielConsommable.AddMatConso(tbx_Nom.Text, tbx_CodeBarre.Text);
            gvMaterielConsommable.DataBind();
            Response.Redirect(Request.RawUrl);
        }
        




    }
}