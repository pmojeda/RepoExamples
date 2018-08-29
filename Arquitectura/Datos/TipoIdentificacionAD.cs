using Entidades;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace Datos
{
    public class TipoIdentificacionAD : ConexionAD
    {
        public List<TipoIdentificacion> TipoIdentificacionConsultar()
        {
            return Datos.TipoIdentificacion.ToList();
        }

        public List<TipoIdentificacion> TipoIdentificacionConsultar(DatosSesion Buscar)
        {
            return Datos.TipoIdentificacion.ToList();
        }

        public TipoIdentificacion TipoIdentificacionConsultarPorID(Int32 Id)
        {
            return Datos.TipoIdentificacion.Where(P=>P.IdTipoIdentificacion == Id).FirstOrDefault();
        }

        public TipoIdentificacion TipoIdentificacionInsertar(TipoIdentificacion TipoIdentificacion)
        {
            Datos.TipoIdentificacion.Add(TipoIdentificacion);
            Datos.SaveChanges();
            return TipoIdentificacion;
        }

        public TipoIdentificacion TipoIdentificacionActualizar(TipoIdentificacion TipoIdentificacion)
        {
            Datos.Entry(TipoIdentificacion).State = EntityState.Modified;
            Datos.SaveChanges();
            return TipoIdentificacion;
        }

        public void TipoIdentificacionEliminar(TipoIdentificacion TipoIdentificacion)
        {
            Datos.TipoIdentificacion.Remove(TipoIdentificacion);
            Datos.SaveChanges();
        }
    }
}
