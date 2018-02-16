using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionMat.dao
{
    public class DaoMaterielConsommable : Dao
    {
        public static IEnumerable<mat_conso> Get()
        {
            return ctxt.mat_conso.ToList();
        }
    }
}


