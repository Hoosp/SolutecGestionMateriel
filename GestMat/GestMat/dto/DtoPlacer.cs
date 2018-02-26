using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestMat.dto
{
    public class DtoPlacer
    {

        public static placer Get(int idMatConso)
        {
            return dao.DaoPlacer.Get(idMatConso);
        }


    }
}