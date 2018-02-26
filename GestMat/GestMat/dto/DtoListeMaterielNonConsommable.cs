using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoListeMaterielNonConsommable
    {
        public static IEnumerable<mat_non_conso> Get()
        {
            return dao.DaoListeMaterielNonConsommable.Get();
        }

        public static mat_non_conso Get(int idMatConso)
        {
            return dao.DaoListeMaterielNonConsommable.Get(idMatConso);
        }

        public static void AddMatNonConso(String nom, String etat, int idSalle)
        {

            //System.Console.WriteLine("nom : " + nom);
            //System.Console.WriteLine("Code Barre : " + codeBarre);

            mat_non_conso matNonConso = new mat_non_conso();

            matNonConso.nom = nom;
            System.Diagnostics.Debug.WriteLine(etat);
            matNonConso.etat = etat;
            matNonConso.id_salle = idSalle;

            dao.DaoListeMaterielNonConsommable.AddMatNonConso(matNonConso);


        }



        public static void SuppMatNonConso(int idMatNonConso)
        {

            dao.DaoListeMaterielNonConsommable.SuppMatNonConso(idMatNonConso);


        }

    }
}