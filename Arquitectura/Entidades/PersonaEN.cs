using System.ComponentModel.DataAnnotations;

namespace Entidades
{
    public class PersonaEN
    {
        [Display(Name = "Persona")]
        public int IdPersona { get; set; }

        [Display(Name = "Tipo de identificación")]
        public int IdTipoIdentificacion { get; set; }

        [Display(Name = "Identificación")]
        public string Identificacion { get; set; }

        [Display(Name = "Nombre")]
        public string Nombre { get; set; }

        [Display(Name = "Apellidos")]
        public string Apellidos { get; set; }

        [Display(Name = "Correo")]
        public string Correo { get; set; }

        [Display(Name = "Teléfono")]
        public string Telefono { get; set; }
    }
    [MetadataType(typeof(PersonaEN))]
    public partial class Persona{}

}
