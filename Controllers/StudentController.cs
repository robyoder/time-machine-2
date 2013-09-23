﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using _14_TimeMachine2.Models ;

namespace _14_TimeMachine2.Controllers
{
    public class StudentController : Controller
    {
        private TM2Entities db = new TM2Entities();
        //
        // GET: /Student/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult StudentTimeEntry()
        {
            var projectQuery = db.PROJECTs.Select(p => new { p.project_id, p.project_name});
            ViewBag.project_id = new SelectList(projectQuery.AsEnumerable(), "project_id", "project_name", 0);

            var locationQuery = db.LOCATIONs.Select(l => new {l.location_id, l.location_name });
            ViewBag.location_id = new SelectList(locationQuery.AsEnumerable(), "location_id", "location_name", 0);

            var categoryQuery = db.CATEGORies.Select(c => new { c.category_id, c.category_name });
            ViewBag.category_id = new SelectList(categoryQuery.AsEnumerable(), "category_id", "category_name", 0);

            return View();
        }

        public ActionResult TimeLog()
        {
            return View();
        }

        //public ActionResult Summary()
        //{
        //    course_id.TitleFormat
        //    return View();
        //}

    }
}
