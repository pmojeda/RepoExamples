using System;
using System.Collections.Generic;
using Datos;
using Entidades;

namespace Logica
{
    public class PersonaLN
    {
        PersonaAD Datos = new PersonaAD();
        public List<Persona> PersonaConsultar()
        {
            return Datos.PersonaConsultar();
        }

        public List<Persona> PersonaConsultar(DatosSesion Buscar)
        {
            return Datos.PersonaConsultar(Buscar);
        }

        public Persona PersonaConsultarPorID(Int32 Id)
        {
            return Datos.PersonaConsultarPorID(Id);
        }

        public List<Persona> PersonaConsultarPorTipoIdentificacion(Int32 Id)
        {
            return Datos.PersonaConsultarPorTipoIdentificacion(Id);
        }

        public Persona PersonaInsertar(Persona Persona)
        {
            return Datos.PersonaInsertar(Persona);
        }

        public Persona PersonaActualizar(Persona Persona)
        {
            return Datos.PersonaActualizar(Persona);
        }

        public void PersonaEliminar(Int32 Id)
        {
            Datos.PersonaEliminar(Id);
        }

        public void ValidaPersona()
        {

        }
    }
}
