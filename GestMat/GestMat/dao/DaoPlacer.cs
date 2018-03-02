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

        public static placer Get(int idMatConso, int idSdS)
        {
            return ctxt.placer.SingleOrDefault(cs => cs.id_mat_conso == idMatConso && cs.id_site_de_stockage == idSdS);
        }

        public static void AddSdSAMatConso(placer placer)
        {
            ctxt.placer.Add(placer);
            Update();
        }

        public static void SuppMatSdSAConso(int idMatConso, int idSdS)
        {
            placer placer = Get(idMatConso, idSdS);
            ctxt.placer.Remove(placer);
            Update();
        }

        public static void UpdateDetailsMatConso(int idMatConso, int idSdS, int qte)
        {
            placer placer = ctxt.placer.SingleOrDefault(cs => cs.id_mat_conso == idMatConso && cs.id_site_de_stockage == idSdS);


            placer.id_site_de_stockage = idSdS;
            placer.quantite = qte;

            ctxt.SaveChanges();
        }
    }
}