using System;
using System.Collections.Generic;
using Datos;
using Entidades;

namespace Logica
{

    public class TipoIdentificacionLN
    {
        TipoIdentificacionAD Datos = new TipoIdentificacionAD();

        public List<TipoIdentificacion> TipoIdentificacionConsultar()
        {
            return Datos.TipoIdentificacionConsultar();
        }

        public List<TipoIdentificacion> TipoIdentificacionConsultar(DatosSesion Buscar)
        {
            return Datos.TipoIdentificacionConsultar(Buscar);
        }

        public TipoIdentificacion TipoIdentificacionConsultarPorID(Int32 Id)
        {
            return Datos.TipoIdentificacionConsultarPorID(Id);
        }

        public TipoIdentificacion TipoIdentificacionInsertar(TipoIdentificacion TipoIdentificacion)
        {
            return Datos.TipoIdentificacionInsertar(TipoIdentificacion);
        }

        public TipoIdentificacion TipoIdentificacionActualizar(TipoIdentificacion TipoIdentificacion)
        {
            return Datos.TipoIdentificacionActualizar(TipoIdentificacion);
        }

        public void TipoIdentificacionEliminar(TipoIdentificacion TipoIdentificacion)
        {
            Datos.TipoIdentificacionEliminar(TipoIdentificacion);
        }

        public void ValidaTipoIdentificacion()
        {

        }

    }
}
