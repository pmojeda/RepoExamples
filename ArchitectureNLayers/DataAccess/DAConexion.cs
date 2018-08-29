using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class DAConexion
    {
        public BusinessEntity.Example01Entities entities;

        public DAConexion()
        {
            entities = new BusinessEntity.Example01Entities();
        }
    }
}
