//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HastaneKayit.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class HastaBilgileri
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HastaBilgileri()
        {
            this.Randevu = new HashSet<Randevu>();
        }
    
        public int HastaID { get; set; }
        public string HastaAdiSoyadi { get; set; }
        public string HastaTC { get; set; }
        public string HastaCinsiyet { get; set; }
        public string HastaKanGrubu { get; set; }
        public string HastaBabaAdi { get; set; }
        public string HastaAnneAdi { get; set; }
        public System.DateTime HastaDogumTarihi { get; set; }
        public string HastaCepTelefonu { get; set; }
        public string HastaSabitTelefonu { get; set; }
        public string HastaAdresi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Randevu> Randevu { get; set; }
    }
}
