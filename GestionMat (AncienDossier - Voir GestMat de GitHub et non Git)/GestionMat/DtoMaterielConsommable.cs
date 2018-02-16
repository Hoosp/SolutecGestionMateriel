
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionMat.dto
{
    public class DtoMaterielConsommable
    {
        public static IEnumerable<mat_conso> Get()
        {
            return dao.DaoMaterielConsommable.Get();
        }

        /*
        public static mat_conso Get(string intitule)
        {
            return DaoFormation.Get(intitule);
        }
        public static IEnumerable<mat_conso> Get()
        {
            return DaoFormation.Get();
        }

        public static void Add(mat_conso uneformation)
        {
            DaoFormation.Add(uneformation);
        }

        public static void Modifier(mat_conso uneformation)
        {
            DaoFormation.Modifier(uneformation);
        }
        */
    }
}