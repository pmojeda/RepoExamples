using Entidades;

namespace Datos
{
    public class ConexionAD
    {
        public EntidadesDatos Datos;
        public ConexionAD()
        {
            //Parametrización de la conexion
            Datos = new EntidadesDatos();

            //Para eliminar la persistencia de datos
            //Datos.Configuration.ProxyCreationEnabled = false;

            //Carga diferida de objetos relacionados
            //Datos.Configuration.LazyLoadingEnabled = false;
        }
    }
}
