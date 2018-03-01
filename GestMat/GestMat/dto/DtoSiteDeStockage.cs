using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoSiteDeStockage
    {
        public static IEnumerable<site_de_stockage> Get()
        {
            return dao.DaoSiteDeStockage.Get();
        }


        public static site_de_stockage Get(int idMatConso)
        {
            return dao.DaoSiteDeStockage.Get(idMatConso);
        }

        public static site_de_stockage Get(string nomMatConso)
        {
            return dao.DaoSiteDeStockage.Get(nomMatConso);
        }

        public static void AddSiteDeStockage(site_de_stockage siteDeStockage)
        {
            dao.DaoSiteDeStockage.AddSiteDeStockage(siteDeStockage);
        }

        public static void SuppSiteDeStockage(int idSiteDeStockage)
        {
            dao.DaoSiteDeStockage.SuppSiteDeStockage(idSiteDeStockage);
        }
    }
}