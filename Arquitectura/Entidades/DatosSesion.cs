using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class DatosSesion
    {
        private String _textobuscar { get; set; }
        public String TextoBuscar
        {
            get
            {
                return _textobuscar;
            }
            set
            {
                _textobuscar = value;
                if (String.IsNullOrWhiteSpace(_textobuscar)) { _textobuscar = String.Empty; }
            }
        }

        public String MensajeError { get; set; }

        public Int32 IdUsuario { get; set; }

        public String NombreUsuario { get; set; }

    }
}
