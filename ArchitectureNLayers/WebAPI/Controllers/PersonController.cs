using BusinessEntity;
using Swashbuckle.Swagger.Annotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BusinessLogic;
using Newtonsoft.Json;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Person Controller
    /// </summary>
    public class PersonController : ApiController
    {
        /// <summary>
        /// List all of People
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<Person>))]
        [Route("api/person/GetAll")]
        public HttpResponseMessage GetAll()
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                List<Person> listPerson = blPerson.GetAll();
         
                return Request.CreateResponse(HttpStatusCode.OK, listPerson);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Get a Person
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(Person))]
        [Route("api/person/{id}")]
        public HttpResponseMessage Get(int id)
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                Person person = blPerson.Get(id);

                return Request.CreateResponse(HttpStatusCode.OK, person);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Get a list of people filtered by Name and Surname
        /// </summary>
        /// <param name="name"></param>
        /// <param name="surname"></param>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<Person>))]
        [Route("api/person/GetAllFiltered/")]
        public HttpResponseMessage GetAllFiltered(string name, string surname="")
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                List<Person> listPerson = blPerson.GetAllFiltered(name, surname);

                return Request.CreateResponse(HttpStatusCode.OK, listPerson);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Get a list of people filtered by Name 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<spGetPersonFilteredbyName_Result>))]
        [Route("api/person/GetAllFilteredByName/")]
        public HttpResponseMessage GetAllFilteredByName(string name)
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                List<spGetPersonFilteredbyName_Result> listPerson = blPerson.GetAllFilteredByName(name);

                return Request.CreateResponse(HttpStatusCode.OK, listPerson);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Create a Person
        /// </summary>
        /// <param name="person"></param>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(Person))]
        [Route("api/person/")]
        public HttpResponseMessage Post([FromBody]Person person)
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                blPerson.Create(person);
                return Request.CreateResponse(HttpStatusCode.OK, person);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Update a Person
        /// </summary>
        /// <param name="person"></param>
        /// <returns></returns>
        [HttpPut]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(Person))]
        [Route("api/person/")]
        public HttpResponseMessage Put([FromBody]Person person)
        {
            try
            {
                BLPerson blPerson = new BLPerson();
                blPerson.Update(person);
                return Request.CreateResponse(HttpStatusCode.OK, person);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// Delete a Person
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(bool))]
        [Route("api/person/{id}")]
        public HttpResponseMessage Delete(int id)
        {
            bool result = false;

            try
            {
                BLPerson blPerson = new BLPerson();
                blPerson.Delete(id);
                result = true;
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message + ": " + ex.StackTrace.ToString());
            }
        }
    }
}
