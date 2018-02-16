using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionMat
{
    public partial class ListeMaterielConsommable : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            odsMaterielConsommable.TypeName = "SolutecGestionMateriel.GestionMat.dto.DtoMaterielConsommable";
        }


    }
}