using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Componentes
{
    public class ControlExcepciones
    {
        public String Exepciones(Exception Inner)
        {

            if (Inner.GetBaseException() != null)
            {
                Inner = Inner.GetBaseException();
            }


            if (Inner is ExceptionAplicacion)
            {
                return Inner.Message;
            }

            if (Inner is SqlException)
            {
                return ErroresSQL((SqlException)Inner);
            }

            return "Error no identificado del tipo (" + Inner.GetType().ToString() + "): " + Inner.HResult + " / " + Inner.Message;

        }

        private String ErroresSQL(SqlException SqlException)
        {
            switch (SqlException.Number)
            {
                case -1: return "No se pudo conectar a la Base de Datos.";
                case 515: return "Se esta intentando insertar un registro con un valor nulo";
                case 530: return "El registro tiene elementos que dependen de él, por favor verifique.";
                case 547: return "El registro tiene elementos que dependen de él, por favorverifique.";
                case 2601: return "Esta intentando ingresar una llave duplicada, verifique por favor.";
                default: return "Error SQL no identificado con el número: " + SqlException.Number.ToString();
            }
        }
    }
}
