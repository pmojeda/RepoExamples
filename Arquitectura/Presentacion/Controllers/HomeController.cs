using Componentes;
using Entidades;
using Newtonsoft.Json;
using Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Presentacion.Controllers
{
    public class HomeController : Controller
    {
        ServicioProyecto Servicio = new ServicioProyecto();
        ControlExcepciones ControlExepciones = new ControlExcepciones();

        // GET: Persona 
        [System.Web.Mvc.OutputCache(NoStore = true, Duration = 0, VaryByParam = "*")]
        public ActionResult Index()
        {
            return View();

        }


        public dynamic GetData(string searchText)
        {
            DatosSesion Buscar = new DatosSesion();
            Buscar.TextoBuscar = searchText;

            List<Persona> Personas = Servicio.PersonaConsultar(Buscar);
            //return new JsonResult { Data = Personas.ToString(), JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            return Newtonsoft.Json.JsonConvert.SerializeObject(Personas, Formatting.Indented, new JsonSerializerSettings { ReferenceLoopHandling = ReferenceLoopHandling.Ignore });
        }


        // GET: Persona/Details/5
        public ActionResult Details(int id)
        {
            Persona Persona = Servicio.PersonaConsultarPorID(id);
            return View(Persona);
        }

        // GET: Persona/Create
        public ActionResult Create()
        {
            ViewBag.IdTipoIdentificacion = new SelectList(Servicio.TipoIdentificacionConsultar(), "IdTipoIdentificacion", "NombreTipoIdentificacion");
            return View();
        }

        // POST: Persona/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Persona Persona)
        {
            try
            {
                // TODO: Add insert logic here
                Persona = Servicio.PersonaInsertar(Persona);
                return RedirectToAction("Index");
            }
            catch (Exception Ex)
            {
                ModelState.AddModelError("", ControlExepciones.Exepciones(Ex));
                ViewBag.IdTipoIdentificacion = new SelectList(Servicio.TipoIdentificacionConsultar(), "IdTipoIdentificacion", "NombreTipoIdentificacion");
                return View();
            }
        }

        // GET: Persona/Edit/5
        public ActionResult Edit(int id)
        {
            try
            {
                Persona Persona = Servicio.PersonaConsultarPorID(id);
                ViewBag.IdTipoIdentificacion = new SelectList(Servicio.TipoIdentificacionConsultar(), "IdTipoIdentificacion", "NombreTipoIdentificacion", Persona.IdTipoIdentificacion);
                return View(Persona);
            }
            catch (Exception Ex)
            {
                Session.Add("Error", ControlExepciones.Exepciones(Ex));
                return RedirectToAction("Index");
            }

        }

        // POST: Persona/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Persona Persona)
        {
            try
            {
                // TODO: Add update logic here
                Persona = Servicio.PersonaActualizar(Persona);
                return RedirectToAction("Index");
            }
            catch (Exception Ex)
            {
                ModelState.AddModelError("", ControlExepciones.Exepciones(Ex));
                ViewBag.IdTipoIdentificacion = new SelectList(Servicio.TipoIdentificacionConsultar(), "IdTipoIdentificacion", "NombreTipoIdentificacion", Persona.IdTipoIdentificacion);
                return View(Persona);
            }
        }

        // GET: Persona/Delete/5
        public ActionResult Delete(int id)
        {
            try
            {
                Servicio.PersonaEliminar(id);
            }
            catch (Exception Ex)
            {
                Session.Add("Error", ControlExepciones.Exepciones(Ex));
            }
            return RedirectToAction("Index");
        }
    }
}