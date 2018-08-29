using Entidades;
using Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Servicios
{
    public class ServicioProyecto
    {
        #region "TipoIdentificacion"
        public List<TipoIdentificacion> TipoIdentificacionConsultar()
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            return Logica.TipoIdentificacionConsultar();
        }

        public List<TipoIdentificacion> TipoIdentificacionConsultar(DatosSesion Buscar)
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            return Logica.TipoIdentificacionConsultar(Buscar);
        }

        public TipoIdentificacion TipoIdentificacionConsultarPorID(Int32 Id)
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            return Logica.TipoIdentificacionConsultarPorID(Id);
        }

        public TipoIdentificacion TipoIdentificacionInsertar(TipoIdentificacion TipoIdentificacion)
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            return Logica.TipoIdentificacionInsertar(TipoIdentificacion);
        }

        public TipoIdentificacion TipoIdentificacionActualizar(TipoIdentificacion TipoIdentificacion)
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            return Logica.TipoIdentificacionActualizar(TipoIdentificacion);
        }

        public void TipoIdentificacionEliminar(TipoIdentificacion TipoIdentificacion)
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            Logica.TipoIdentificacionEliminar(TipoIdentificacion);
        }

        public void ValidaTipoIdentificacion()
        {
            TipoIdentificacionLN Logica = new TipoIdentificacionLN();
            Logica.ValidaTipoIdentificacion();
        }        
        #endregion

        #region "Persona"
        public List<Persona> PersonaConsultar()
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaConsultar();
        }

        public List<Persona> PersonaConsultar(DatosSesion Buscar)
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaConsultar(Buscar);
        }

        public Persona PersonaConsultarPorID(Int32 Id)
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaConsultarPorID(Id);
        }

        public List<Persona> PersonaConsultarPorTipoIdentificacion(Int32 Id)
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaConsultarPorTipoIdentificacion(Id);
        }

        public Persona PersonaInsertar(Persona Persona)
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaInsertar(Persona);
        }

        public Persona PersonaActualizar(Persona Persona)
        {
            PersonaLN Logica = new PersonaLN();
            return Logica.PersonaActualizar(Persona);
        }

        public void PersonaEliminar(Int32 Id)
        {
            PersonaLN Logica = new PersonaLN();
            Logica.PersonaEliminar(Id);
        }

        public void ValidaPersona()
        {
            PersonaLN Logica = new PersonaLN();
            Logica.ValidaPersona();
        }
        #endregion

    }
}
