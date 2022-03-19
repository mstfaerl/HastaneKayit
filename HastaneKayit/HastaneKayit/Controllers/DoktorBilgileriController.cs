using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HastaneKayit.Models.Entity;

namespace HastaneKayit.Controllers
{
    public class DoktorBilgileriController : Controller
    {
        HastaneKayitEntities hke = new HastaneKayitEntities();
        public ActionResult Index()
        {
            var doktor = hke.DoktorBilgileri.ToList();
            return View(doktor);
        }

        [HttpGet]

        public ActionResult DoktorEkle()
        {
            return View();
        }

        [HttpPost]

        public ActionResult DoktorEkle(DoktorBilgileri db)
        {
            hke.DoktorBilgileri.Add(db);
            hke.SaveChanges();
            return View();
        }

        public ActionResult DoktorSil(int id)
        {
            var doktor = hke.DoktorBilgileri.Find(id);
            hke.DoktorBilgileri.Remove(doktor);
            hke.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DoktorGetir(int id)
        {
            var doktor = hke.DoktorBilgileri.Find(id);
            return View("DoktorGetir",doktor);
        }

        public ActionResult DoktorGuncelle(DoktorBilgileri db)
        {
            var doktor = hke.DoktorBilgileri.Find(db.DoktorID);
            doktor.DoktorID = db.DoktorID;
            doktor.DoktorAdiSoyadi = db.DoktorAdiSoyadi;
            doktor.DoktorTC = db.DoktorTC;
            doktor.DoktorIseGiris = db.DoktorIseGiris;
            doktor.DoktorUnvani = db.DoktorUnvani;
            hke.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}