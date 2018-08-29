using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebAPI.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebAPI.Controllers.Tests
{
    [TestClass()]
    public class UnitTest1
    {
        [TestMethod()]
        public void GetTest()
        {
            //Assert.Fail();
            Assert.AreEqual(1, 1);
        }
    }
}