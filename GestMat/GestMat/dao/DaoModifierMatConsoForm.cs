using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoModifierMatConsoForm : Dao
    {

        public static void UpdateMatConso(int idMarConso, string nom, string codeBarre)
        {
            mat_conso matConso = ctxt.mat_conso.SingleOrDefault(cs => cs.id_mat_conso == idMarConso);


            matConso.nom = nom;
            matConso.code_barres = codeBarre;

            ctxt.SaveChanges();
        }



    }
}