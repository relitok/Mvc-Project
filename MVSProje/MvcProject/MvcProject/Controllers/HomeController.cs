using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcProject.Models;

namespace MvcProje.Controllers
{
    public class HomeController : Controller
    {
        List<Products> pList = new List<Products>();

        public ActionResult Index()
        {
            MvcProject.Models.ConnectionMySql con = new MvcProject.Models.ConnectionMySql();
            pList = con.getProducts();
            ViewData["ProductList"] = pList;

            return View();
        }


    }
}
