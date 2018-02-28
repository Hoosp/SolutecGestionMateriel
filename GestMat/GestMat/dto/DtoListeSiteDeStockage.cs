using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoListeSiteDeStockage
    {
        public static IEnumerable<site_de_stockage> Get()
        {
            return dao.DaoListeSiteDeStockage.Get();
        }
        
    }
}