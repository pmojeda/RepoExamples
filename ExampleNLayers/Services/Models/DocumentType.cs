using System;
using System.Collections.Generic;

namespace Services.Models
{
    public partial class DocumentType
    {
        public DocumentType()
        {
            Person = new HashSet<Person>();
        }

        public int IdDocumentType { get; set; }
        public string Description { get; set; }

        public ICollection<Person> Person { get; set; }
    }
}
