using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang.Controllers
{
    public class ChatbotController : Controller
    {
        // GET: Chatbot
        public ActionResult Partial_Chatbot()
        {
            return PartialView();
        }
    }
}