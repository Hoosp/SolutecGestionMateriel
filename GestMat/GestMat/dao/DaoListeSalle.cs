using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoListeSalle : Dao
    {

        public static IEnumerable<salle> Get()
        {
            return ctxt.salle.ToList();
        }
    }
}