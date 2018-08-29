using System;
using System.Collections.Generic;

namespace Services.Models
{
    public partial class Person
    {
        public int IdPerson { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public int IdDocumentType { get; set; }
        public int DocumentNumber { get; set; }
        public string Email { get; set; }
        public string PhoneNumbers { get; set; }
        public string Sex { get; set; }
        public DateTime Birthdate { get; set; }
        public int? IdMaritalStatus { get; set; }
        public DateTime Created { get; set; }
        public DateTime? Updated { get; set; }

        public DocumentType IdDocumentTypeNavigation { get; set; }
        public MaritalStatus IdMaritalStatusNavigation { get; set; }
    }
}
