//------------------------------------------------------------------------------
// <auto-generated>
//    Ce code a été généré à partir d'un modèle.
//
//    Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//    Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GestionMat
{
    using System;
    using System.Collections.Generic;
    
    public partial class personnel_projet
    {
        public string fonction { get; set; }
        public int id_projet { get; set; }
        public int id_personnel { get; set; }
    
        public virtual personnel personnel { get; set; }
        public virtual projet projet { get; set; }
    }
}
