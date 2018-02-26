using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoModifierMatNonConsoForm
    {

        public static void UpdateMatNonConso(int idMatNonConso, string nom, string etat, int idSalle)
        {
            dao.DaoModifierMatNonConsoForm.UpdateMatNonConso( idMatNonConso,  nom,  etat,  idSalle);
        }

    }
}