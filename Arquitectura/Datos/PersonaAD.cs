using Entidades;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace Datos
{
    public class PersonaAD:ConexionAD 
    {
        public List<Persona> PersonaConsultar()
        {
            return Datos.Persona.ToList();
        }

        public List<Persona> PersonaConsultar(DatosSesion Buscar)
        {
            //var q =  Datos.Persona.Where(P=>P.Nombre.Contains(Buscar.TextoBuscar) || P.Apellidos.Contains(Buscar.TextoBuscar) || Buscar.TextoBuscar==string.Empty).Include(P=>P.TipoIdentificacion).ToList();
            var q = Datos.Persona.Where(P => P.Nombre.Contains(Buscar.TextoBuscar) || P.Apellidos.Contains(Buscar.TextoBuscar) || Buscar.TextoBuscar == string.Empty).ToList();
            return q;
        }

        public Persona PersonaConsultarPorID(Int32 Id)
        {
            return Datos.Persona.Where(P => P.IdPersona == Id).FirstOrDefault();
        }

        public List<Persona> PersonaConsultarPorTipoIdentificacion(Int32 Id)
        {
            return Datos.Persona.Where(P => P.IdTipoIdentificacion == Id).ToList();
        }

        public Persona PersonaInsertar(Persona Persona)
        {
            Datos.Persona.Add(Persona);
            Datos.SaveChanges();
            return Persona;
        }

        public Persona PersonaActualizar(Persona Persona)
        {
            Datos.Entry(Persona).State = EntityState.Modified;
            Datos.SaveChanges();
            return Persona;
        }

        public void PersonaEliminar(Int32 Id)
        {
            Persona Persona = Datos.Persona.Find(Id); 
            Datos.Persona.Remove(Persona);
            Datos.SaveChanges();
        }
    }
}
