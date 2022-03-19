using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HastaneKayit.Models.Entity;

namespace HastaneKayit.Controllers
{
    public class HastaBilgileriController : Controller
    {
        HastaneKayitEntities hke = new HastaneKayitEntities();
        public ActionResult Index()
        {
            var hasta = hke.HastaBilgileri.ToList();
            return View(hasta);
        }

        [HttpGet]

        public ActionResult HastaEkle()
        {
            return View();
        }

        [HttpPost]

        public ActionResult HastaEkle(HastaBilgileri hb)
        {
            hke.HastaBilgileri.Add(hb);
            hke.SaveChanges();
            return View();
        }

        public ActionResult HastaSil(int id)
        {
            var hasta = hke.HastaBilgileri.Find(id);
            hke.HastaBilgileri.Remove(hasta);
            hke.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult HastaGetir(int id)
        {
            var hasta = hke.HastaBilgileri.Find(id);
            return View("HastaGetir", hasta);
        }

        public ActionResult HastaGuncelle(HastaBilgileri hb)
        {
            var hasta = hke.HastaBilgileri.Find(hb.HastaID);
            hasta.HastaID = hb.HastaID;
            hasta.HastaAdiSoyadi = hb.HastaAdiSoyadi;
            hasta.HastaTC = hb.HastaTC;
            hasta.HastaCinsiyet = hb.HastaCinsiyet;
            hasta.HastaKanGrubu = hb.HastaKanGrubu;
            hasta.HastaBabaAdi = hb.HastaBabaAdi;
            hasta.HastaAnneAdi = hb.HastaAnneAdi;
            hasta.HastaDogumTarihi = hb.HastaDogumTarihi;
            hasta.HastaCepTelefonu = hb.HastaCepTelefonu;
            hasta.HastaSabitTelefonu = hb.HastaSabitTelefonu;
            hasta.HastaAdresi = hb.HastaAdresi;

            hke.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}