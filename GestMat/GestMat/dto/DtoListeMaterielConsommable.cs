using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoListeMaterielConsommable
    {
        public static IEnumerable<mat_conso> Get()
        {
            return dao.DaoListeMaterielConsommable.Get();
        }

        public static mat_conso Get(int idMatConso)
        {
            return dao.DaoListeMaterielConsommable.Get(idMatConso);
        }

        public static void AddMatConso(String nom, String codeBarre)
        {

            System.Console.WriteLine("nom : " + nom);
            System.Console.WriteLine("Code Barre : " + codeBarre);

            mat_conso matConso = new mat_conso();

            matConso.nom = nom;
            matConso.code_barres = codeBarre;

            dao.DaoListeMaterielConsommable.AddMatConso(matConso);


        }



        public static void SuppMatConso(int idMatConso)
        {

           dao.DaoListeMaterielConsommable.SuppMatConso(idMatConso);


        }


    }
}