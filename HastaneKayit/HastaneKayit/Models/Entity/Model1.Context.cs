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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HastaneKayitEntities : DbContext
    {
        public HastaneKayitEntities()
            : base("name=HastaneKayitEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DoktorBilgileri> DoktorBilgileri { get; set; }
        public virtual DbSet<HastaBilgileri> HastaBilgileri { get; set; }
        public virtual DbSet<Randevu> Randevu { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
