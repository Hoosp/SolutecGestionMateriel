using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoModifierMatConsoForm
    {


        public static void UpdateMatConso(int idMatConso, string nom, string codeBarre)
        {
            dao.DaoModifierMatConsoForm.UpdateMatConso( idMatConso, nom,  codeBarre);
        }


    }
}