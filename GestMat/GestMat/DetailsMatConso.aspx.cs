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
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int idMatConso = Convert.ToInt32(Request.QueryString["idMatConso"]);
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



    }
}