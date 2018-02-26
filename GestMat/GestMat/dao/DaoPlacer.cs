using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoPlacer : Dao
    {

        public static placer Get(int idMatConso)
        {
            return ctxt.placer.SingleOrDefault(cs => cs.id_mat_conso == idMatConso);
        }

    }
}