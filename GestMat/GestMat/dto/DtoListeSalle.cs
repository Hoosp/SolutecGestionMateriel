using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoListeSalle
    {
        public static IEnumerable<salle> Get()
        {
            return dao.DaoListeSalle.Get();
        }
    }
}