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
    
    public partial class mat_non_conso
    {
        public mat_non_conso()
        {
            this.rese_mat_non_conso = new HashSet<rese_mat_non_conso>();
            this.personnel = new HashSet<personnel>();
        }
    
        public int id_mat_non_conso { get; set; }
        public string nom { get; set; }
        public string etat { get; set; }
        public int id_salle { get; set; }
    
        public virtual salle salle { get; set; }
        public virtual ICollection<rese_mat_non_conso> rese_mat_non_conso { get; set; }
        public virtual ICollection<personnel> personnel { get; set; }
    }
}
