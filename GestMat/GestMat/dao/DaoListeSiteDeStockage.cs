using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoListeSiteDeStockage : Dao
    {
        public static IEnumerable<site_de_stockage> Get()
        {
            return ctxt.site_de_stockage.ToList();
        }
    }
}