using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoDemandeMatConso
    {

        public static IEnumerable<demande_mat_conso> Get()
        {
            return dao.DaoDemandeMatConso.Get();
        }

        public static demande_mat_conso Get(int idMatConso)
        {
            return dao.DaoDemandeMatConso.Get(idMatConso);
        }

        public static void AddDemandeMatConso(int idMatConso, int quantite, DateTime useDate, site_de_stockage siteDeStockage)
        {
            demande_mat_conso newDemand = new demande_mat_conso()
            {
                id_mat_conso = idMatConso,
                quantite = quantite,
                date_utilisation = useDate,
                date_demande = DateTime.Now,
                etat_demande = "en_cours",
                //id_site_de_stockage = siteDeStockage
            };
            dao.DaoDemandeMatConso.AddDemandeMatConso(newDemand);
        }



        public static void SuppDemandeMatConso(int idMatConso)
        {
            dao.DaoDemandeMatConso.SuppDemandeMatConso(idMatConso);
        }


    }

}