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

        protected void ModifierMatConso_Command(object sender, EventArgs e)
        {

        }

        protected void SupprimerMatConso_Command(object sender, EventArgs e)
        {

        }

        protected void btnAjouterMatConso_Click(object sender, EventArgs e)
        {
            int idStagiaire = Convert.ToInt32(ddlAjouterStagiaire.SelectedValue);
            dto.DtoSessionCursus.AddStagiaire(idSessionCursus, idStagiaire);
            gvStagiaires.DataBind();
            ddlAjouterStagiaire.DataBind();
            Response.Redirect(Request.RawUrl);
        }



        
            
            
    }
}