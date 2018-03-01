using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dao
{
    public class DaoSiteDeStockage : Dao
    {
        public static IEnumerable<site_de_stockage> Get()
        {
            return ctxt.site_de_stockage.ToList();
        }


        public static site_de_stockage Get(int idMatConso)
        {
            return ctxt.site_de_stockage.SingleOrDefault(sds => sds.id_site_de_stockage == idMatConso);
        }

        public static site_de_stockage Get(string nomMatConso)
        {
            return ctxt.site_de_stockage.SingleOrDefault(sds => sds.nom == nomMatConso);
        }

        public static void AddSiteDeStockage(site_de_stockage siteDeStockage)
        {

            ctxt.site_de_stockage.Add(siteDeStockage);
            Update();
        }

        public static void SuppSiteDeStockage(int idSiteDeStockage)
        {
            site_de_stockage siteDeStockage = Get(idSiteDeStockage);
            ctxt.site_de_stockage.Remove(siteDeStockage);
            Update();
        }
    }
}