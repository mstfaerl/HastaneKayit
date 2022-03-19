using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HastaneKayit.Models.Entity;

namespace HastaneKayit.Controllers
{
    public class RandevuController : Controller
    {
        HastaneKayitEntities hke = new HastaneKayitEntities();
        // GET: Randevu
        public ActionResult Index()
        {
            var randevu = hke.Randevu.ToList();
            return View(randevu);
        }

        [HttpGet]
        public ActionResult RandevuEkle()
        {
            List<SelectListItem> doktorlar = (from i in hke.DoktorBilgileri.ToList()
                                              select new SelectListItem
                                              {
                                                  Text = i.DoktorAdiSoyadi,
                                                  Value = i.DoktorID.ToString()

                                              }).ToList();

            ViewBag.dktr = doktorlar;

            List<SelectListItem> hastalar = (from i in hke.HastaBilgileri.ToList()
                                              select new SelectListItem
                                              {
                                                  Text = i.HastaAdiSoyadi,
                                                  Value = i.HastaID.ToString()

                                              }).ToList();
            
            ViewBag.hstlr = hastalar;



            return View();
        }
        [HttpPost]
        public ActionResult RandevuEkle(Randevu rnd)
        {
            var dktr = hke.DoktorBilgileri.Where(m => m.DoktorID == rnd.DoktorBilgileri.DoktorID).FirstOrDefault();
            var hstlr = hke.HastaBilgileri.Where(m => m.HastaID == rnd.HastaBilgileri.HastaID).FirstOrDefault();
            rnd.DoktorBilgileri = dktr;
            rnd.HastaBilgileri = hstlr;
            hke.Randevu.Add(rnd);
            hke.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RandevuGetir(int id)
        {
            var rnd = hke.Randevu.Find(id);

            List<SelectListItem> doktorlar = (from i in hke.DoktorBilgileri.ToList()
                                              select new SelectListItem
                                              {
                                                  Text = i.DoktorAdiSoyadi,
                                                  Value = i.DoktorID.ToString()

                                              }).ToList();

            ViewBag.dktr = doktorlar;

            List<SelectListItem> hastalar = (from i in hke.HastaBilgileri.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.HastaAdiSoyadi,
                                                 Value = i.HastaID.ToString()

                                             }).ToList();

            ViewBag.hstlr = hastalar;

            return View("RandevuGetir", rnd);
        }
        public ActionResult RandevuGuncelle(Randevu randevu)
        {
            var rnd = hke.Randevu.Find(randevu.RandevuID);
            rnd.RandevuTarihSaat = randevu.RandevuTarihSaat;
            var dktr = hke.DoktorBilgileri.Where(m => m.DoktorID == randevu.DoktorBilgileri.DoktorID).FirstOrDefault();
            var hstlr = hke.HastaBilgileri.Where(m => m.HastaID == randevu.HastaBilgileri.HastaID).FirstOrDefault();
            rnd.DoktorID = dktr.DoktorID;
            rnd.HastaID = hstlr.HastaID;
            hke.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RandevuSil(int id)
        {
            var randevu = hke.Randevu.Find(id);
            hke.Randevu.Remove(randevu);
            hke.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}