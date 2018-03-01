using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class FormulairDemandesConsommables : System.Web.UI.Page
    {

        private int idMatConso;
        protected void Page_Load(object sender, EventArgs e)
        {
            mat_conso matConso = null;
            if (Request.QueryString["id_mat_conso"] != null && Request.QueryString["id_mat_conso"] != "")
            {
                idMatConso = Convert.ToInt32(Request.QueryString["id_mat_conso"]);
                matConso = dto.DtoListeMaterielConsommable.Get(idMatConso);
            }

            if (matConso != null)
            {
                site_de_stockage[] sitesDeStockage = dto.DtoListeSiteDeStockage.Get().ToArray();
                lblTitre.Text += matConso.nom;
                tbDateUtilisation.Text = DateTime.Now.ToString();
                tbQuantite.Text = "1";
                for (int i=0 ; i<sitesDeStockage.Length ; i++)
                {
                    ddlSiteStrockage.Items.Insert(i, sitesDeStockage[i].nom);
                }
            }
            else
            {
                Response.Redirect("~/ListeMaterielConsommable.aspx?errorLog=wrongId");
            }
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            try{
                int quantite = Convert.ToInt32(tbQuantite.Text);
                DateTime useDate = DateTime.Parse(tbDateUtilisation.Text);
                site_de_stockage siteDeStockage = dto.DtoSiteDeStockage.Get(ddlSiteStrockage.SelectedValue);

                if (useDate<DateTime.Now)
                {
                    Response.Redirect("~/FormulairDemandesConsommables.aspx?errorLog=wrongDate");
                }else if(quantite <= 0 || siteDeStockage == null)
                {
                    Response.Redirect("~/FormulairDemandesConsommables.aspx?errorLog=wrongInput");
                }
                else // Cas d'un saisie valide
                {
                    dto.DtoDemandeMatConso.AddDemandeMatConso(idMatConso, quantite, useDate, siteDeStockage);
                    Response.Redirect(string.Format("~/DetailMatConso.aspx?messageLog=valMCDem&id_mat_conso={0}", idMatConso));
                }
            }catch
            {
                Response.Redirect("~/FormulairDemandesConsommables.aspx?errorLog=wrongInput");
            }
            
        }
    }
}