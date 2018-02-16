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
    }
}