using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessEntity;
using DataAccess;

namespace BusinessLogic
{
    public class BLPerson
    {
        private DAPerson data;

        public BLPerson()
        {
            data = new DAPerson();
        }

        public List<Person> GetAll()
        {
            return data.GetAll();
        }

        public Person Get(int id)
        {
            return data.Get(id);
        }

        public List<Person> GetAllFiltered(string name, string surname)
        {
            return data.GetAllFiltered(name, surname);
        }

        public Person Create(Person person)
        {            
            return data.Create(person);
        }

        public Person Update(Person person)
        {
            return data.Update(person);
        }

        public bool Delete(int id)
        {
            return data.Delete(id);
        }
    }
}
