using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoDemandeMatConso : Dao
    {
        public static IEnumerable<demande_mat_conso> Get()
        {
            return ctxt.demande_mat_conso.ToList();
        }


        public static demande_mat_conso Get(int idMatConso)
        {
            return ctxt.demande_mat_conso.SingleOrDefault(cs => cs.id_mat_conso == idMatConso);
        }


        public static void AddDemandeMatConso(demande_mat_conso demandeMatConso)
        {

            ctxt.demande_mat_conso.Add(demandeMatConso);
            Update();
        }

        public static void SuppDemandeMatConso(int idMatConso)
        {
            demande_mat_conso matConso = Get(idMatConso);
            ctxt.demande_mat_conso.Remove(matConso);
            Update();
        }
    }
}