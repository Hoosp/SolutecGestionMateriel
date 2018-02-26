using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoModifierMatNonConsoForm : Dao
    {


        public static void UpdateMatNonConso(int idMatNonConso, string nom, string etat, int idSalle)
        {
            mat_non_conso matNonConso = ctxt.mat_non_conso.SingleOrDefault(cs => cs.id_mat_non_conso == idMatNonConso);


            matNonConso.nom = nom;
            matNonConso.etat = etat;
            matNonConso.id_salle = idSalle;

            ctxt.SaveChanges();
        }



    }
}