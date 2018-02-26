using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoListeMaterielConsommable : Dao
    {
        public static IEnumerable<mat_conso> Get()
        {
            return ctxt.mat_conso.ToList();
        }


        public static mat_conso Get(int idMatConso)
        {
            return ctxt.mat_conso.SingleOrDefault(cs => cs.id_mat_conso == idMatConso);
        }


        public static void AddMatConso(mat_conso matConso)
        {
            ctxt.mat_conso.Add(matConso);
            Update();
        }

        public static void SuppMatConso(int idMatConso)
        {
            mat_conso matConso = Get(idMatConso);
            ctxt.mat_conso.Remove(matConso);
            Update();
        }
    }
}