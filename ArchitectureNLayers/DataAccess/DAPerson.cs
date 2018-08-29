using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessEntity;

namespace DataAccess
{
    public class DAPerson:DAConexion
    {
        public List<Person> GetAll()
        {
            return base.entities.Person.ToList();
        }

        public Person Get(int id)
        {
            return base.entities.Person.Find(id);
        }

        public List<Person> GetAllFiltered(string name, string surname)
        {
            return base.entities.Person.Where(P => P.Name.Contains(name) && P.Surname.Contains(surname)).ToList();
        }

        public Person Create(Person person)
        {
            base.entities.Person.Add(person);
            base.entities.SaveChanges();
            return person;
        }

        public Person Update(Person person)
        {
            base.entities.Entry(person).State= EntityState.Modified;
            base.entities.SaveChanges();            
            return person;
        }

        public bool Delete(int id)
        {
            bool result = false;
            Person person = base.entities.Person.Find(id);

            if (person != null)
            {
                base.entities.Person.Remove(person);
                base.entities.SaveChanges();
                result = true;
            }

            return result;
        }
    }
}
