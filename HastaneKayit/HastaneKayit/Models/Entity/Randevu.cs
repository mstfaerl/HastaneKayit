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
    
    public partial class Randevu
    {
        public int RandevuID { get; set; }
        public int HastaID { get; set; }
        public int DoktorID { get; set; }
        public System.DateTime RandevuTarihSaat { get; set; }
    
        public virtual DoktorBilgileri DoktorBilgileri { get; set; }
        public virtual HastaBilgileri HastaBilgileri { get; set; }
    }
}
