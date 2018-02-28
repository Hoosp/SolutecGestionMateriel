using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoPlacer : Dao
    {

        public static IEnumerable<placer> Get(int idMatConso)
        {
            return ctxt.placer.Where(cs => cs.id_mat_conso == idMatConso).ToList();
        }

    }
}