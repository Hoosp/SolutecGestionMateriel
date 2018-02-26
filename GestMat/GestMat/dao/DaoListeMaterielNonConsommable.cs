using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao 
{
    public class DaoListeMaterielNonConsommable : Dao
    {
        public static IEnumerable<mat_non_conso> Get()
        {
            return ctxt.mat_non_conso.ToList();
        }


        public static mat_non_conso Get(int idMatNonConso)
        {
            return ctxt.mat_non_conso.SingleOrDefault(cs => cs.id_mat_non_conso == idMatNonConso);
        }


        public static void AddMatNonConso(mat_non_conso matNonConso)
        {
            ctxt.mat_non_conso.Add(matNonConso);
            Update();
        }

        public static void SuppMatNonConso(int idMatNonConso)
        {
            mat_non_conso matNonConso = Get(idMatNonConso);
            ctxt.mat_non_conso.Remove(matNonConso);
            Update();
        }
    }
}