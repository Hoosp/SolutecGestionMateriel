//------------------------------------------------------------------------------
// <auto-generated>
//    Ce code a été généré à partir d'un modèle.
//
//    Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//    Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GestMat
{
    using System;
    using System.Collections.Generic;
    
    public partial class site
    {
        public site()
        {
            this.salle = new HashSet<salle>();
            this.site_de_stockage = new HashSet<site_de_stockage>();
        }
    
        public int id_site { get; set; }
        public string nom { get; set; }
        public string adresse { get; set; }
        public Nullable<int> code_postal { get; set; }
        public string ville { get; set; }
    
        public virtual ICollection<salle> salle { get; set; }
        public virtual ICollection<site_de_stockage> site_de_stockage { get; set; }
    }
}
