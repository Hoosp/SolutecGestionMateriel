using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class DetailsMatConso : System.Web.UI.Page
    {

        int idMatConso;
        int idSiteDeStockage;


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                idMatConso = Convert.ToInt32(Request.QueryString["idMatConso"]);
                mat_conso matConso = dto.DtoListeMaterielConsommable.Get(idMatConso);
                id_MatConso.Text = matConso.id_mat_conso.ToString();
                Nom_MatConso.Text = matConso.nom;
            }
            catch
            {
                id_MatConso.Text = Request.QueryString["idMatConso"];
                Nom_MatConso.Text = "ID non valide";
            }

            
           



        }


        protected void BtnGrid(object sender, GridViewCommandEventArgs e)
        {

            //int index = e.CommandArgument;

            if (e.CommandName == "SupprimerQteMatConso")
            {
                System.Diagnostics.Debug.WriteLine("Supprimer");
                System.Diagnostics.Debug.WriteLine(idMatConso);
                System.Diagnostics.Debug.WriteLine(e.CommandArgument);



                idSiteDeStockage = Convert.ToInt32(e.CommandArgument);

                 dto.DtoPlacer.SuppSdSAMatConso(idMatConso, idSiteDeStockage);
                 gvMaterielConsommableDetail.DataBind();
                 Response.Redirect(Request.RawUrl);
                 //System.Diagnostics.Debug.WriteLine(idMatConso);*/
            }

             //System.Diagnostics.Debug.WriteLine("Yo");

             if (e.CommandName == "ModifierQteMatConso")
             {
                System.Diagnostics.Debug.WriteLine("Modifier");
                System.Diagnostics.Debug.WriteLine(idMatConso);
                 System.Diagnostics.Debug.WriteLine(e.CommandArgument);

                
                     idSiteDeStockage = Convert.ToInt32(e.CommandArgument);

                     placer placer = dto.DtoPlacer.Get(idMatConso, idSiteDeStockage);

                     Session["placer"] = placer;  // saves to session
                     Response.Redirect("~/ModifierDetailsMatConsoForm.aspx");
            }




        }


        protected void BtnAjouterSdSAMatConso_Click(object sender, EventArgs e)
        {

            dto.DtoPlacer.AddMatSdSAConso(idMatConso, Convert.ToInt32(idSdS.Text), Convert.ToInt32(qte.Text));

            gvMaterielConsommableDetail.DataBind();
            Response.Redirect(Request.RawUrl);
        }

    }
}