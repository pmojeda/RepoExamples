using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
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
            return entities.Person.ToList();
        }

        public Person Get(int id)
        {
            return entities.Person.Find(id);
        }

        public List<Person> GetAllFiltered(string name, string surname)
        {
            //Cargando los objetos referenciados (Navegación del EF)
            return entities.Person
                .Where(P => P.Name.Contains(name) && P.Surname.Contains(surname))
                .Include(d => d.DocumentType)
                .Include(m => m.MaritalStatus)
                .ToList();

            //Sin cargar objetos referenciados
            /*
            return entities.Person
                .Where(P => P.Name.Contains(name) && P.Surname.Contains(surname))
                .ToList();
            */
        }

        public List<spGetPersonFilteredbyName_Result> GetAllFilteredByName(string name)
        {
            ObjectResult<spGetPersonFilteredbyName_Result> result = entities.spGetPersonFilteredbyName(name);
            return result.ToList();
        }

        public Person Create(Person person)
        {
            entities.Person.Add(person);
            entities.SaveChanges();
            return person;
        }

        public Person Update(Person person)
        {
            entities.Entry(person).State= EntityState.Modified;
            entities.SaveChanges();            
            return person;
        }

        public bool Delete(int id)
        {
            bool result = false;
            Person person = entities.Person.Find(id);

            if (person != null)
            {
                entities.Person.Remove(person);
                entities.SaveChanges();
                result = true;
            }

            return result;
        }
    }
}
