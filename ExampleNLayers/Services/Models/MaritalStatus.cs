using System;
using System.Collections.Generic;

namespace Services.Models
{
    public partial class MaritalStatus
    {
        public MaritalStatus()
        {
            Person = new HashSet<Person>();
        }

        public int IdMaritalStatus { get; set; }
        public string Description { get; set; }

        public ICollection<Person> Person { get; set; }
    }
}
