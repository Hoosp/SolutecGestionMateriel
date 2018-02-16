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
    }
}