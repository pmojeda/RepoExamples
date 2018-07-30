using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading.Tasks;
using WebAPI.Models;
using System.Net.Http;
using System.Web.Http.Hosting;
using System.Web.Http;
using Newtonsoft.Json;

namespace WebAPI.Controllers.Tests
{
    [TestClass()]
    public class ValuesControllerTests
    {
        [TestMethod()]
        public void GetAllTest()
        {
            var controller = new ValuesController
            {
                Request = new HttpRequestMessage()
                {
                    Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
                }
            };

            var response = controller.GetAll();

            Task<string> responseString = response.Content.ReadAsStringAsync();
            string jsonString = responseString.Result;

            USPresident[] listPresidents = JsonConvert.DeserializeObject<USPresident[]>(jsonString);
            Assert.AreNotEqual(0, listPresidents.Length);
        }

        [TestMethod()]
        public void GetOrderedAscendentTest()
        {
            var controller = new ValuesController
            {
                Request = new HttpRequestMessage()
                {
                    Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
                }
            };

            var response = controller.GetOrdered(true);

            Task<string> responseString = response.Content.ReadAsStringAsync();
            string jsonString = responseString.Result;

            USPresident[] listPresidents = JsonConvert.DeserializeObject<USPresident[]>(jsonString);
            Assert.IsTrue(DateTime.Parse(listPresidents[0].Birthday) <= DateTime.Parse(listPresidents[listPresidents.Length - 1].Birthday));
            Assert.IsTrue(string.IsNullOrEmpty(listPresidents[listPresidents.Length - 1].Death_day));
        }

        [TestMethod()]
        public void GetOrderedDescendentTest()
        {
            var controller = new ValuesController
            {
                Request = new HttpRequestMessage()
                {
                    Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
                }
            };

            var response = controller.GetOrdered(false);

            Task<string> responseString = response.Content.ReadAsStringAsync();
            string jsonString = responseString.Result;

            USPresident[] listPresidents = JsonConvert.DeserializeObject<USPresident[]>(jsonString);
            Assert.IsTrue(DateTime.Parse(listPresidents[0].Birthday) >= DateTime.Parse(listPresidents[listPresidents.Length - 1].Birthday));
            Assert.IsTrue(string.IsNullOrEmpty(listPresidents[listPresidents.Length-1].Death_day));
        }

        [TestMethod()]
        public void GetFilteredTest()
        {
            var controller = new ValuesController
            {
                Request = new HttpRequestMessage()
                {
                    Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
                }
            };

            var response = controller.GetFiltered("John Adams");

            Task<string> responseString = response.Content.ReadAsStringAsync();
            string jsonString = responseString.Result;

            USPresident[] listPresidents = JsonConvert.DeserializeObject<USPresident[]>(jsonString);
            Assert.AreEqual(listPresidents[0].President, "John Adams");
        }
    }
}