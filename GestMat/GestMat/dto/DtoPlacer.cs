using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoPlacer
    {

        public static IEnumerable<placer> Get(int idMatConso)
        {
            return dao.DaoPlacer.Get(idMatConso);
        }

        public static placer Get(int idMatConso, int idSdS)
        {
            return dao.DaoPlacer.Get(idMatConso, idSdS);
        }

        public static void SuppSdSAMatConso(int idMatConso, int idSdS)
        {
            dao.DaoPlacer.SuppMatSdSAConso(idMatConso, idSdS);
        }

        public static void AddMatSdSAConso(int idMatConso, int idSdS, int qte)
        {

            //System.Console.WriteLine("nom : " + nom);
            //System.Console.WriteLine("Code Barre : " + codeBarre);

            placer placer = new placer();

            placer.id_mat_conso = idMatConso;
            placer.id_site_de_stockage = idSdS;
            placer.quantite = qte;

            dao.DaoPlacer.AddSdSAMatConso(placer);


        }

        public static void UpdateDetailsMatConso(int idMatConso, int idSdS, int qte)
        {
           /* placer placer = new placer();

            placer.id_mat_conso = idMatConso;
            placer.id_site_de_stockage = idSdS;
            placer.quantite = qte;*/

            dao.DaoPlacer.UpdateDetailsMatConso( idMatConso,  idSdS,  qte);
        }

    }
}