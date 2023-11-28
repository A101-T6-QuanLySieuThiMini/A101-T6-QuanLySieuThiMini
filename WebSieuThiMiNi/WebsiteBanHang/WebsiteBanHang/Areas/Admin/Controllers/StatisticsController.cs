 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang.Areas.Admin.Controllers
{
    public class StatisticsController : Controller
    {
        // GET: Admin/statistics
        public ActionResult Index()
        {
            return View();
        }
    }
}