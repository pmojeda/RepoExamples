using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPI.Models;
using WebAPI.Helpers;
using Swashbuckle.Swagger.Annotations;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Controller to manage lists of presidents
    /// </summary>
    public class PresidentController : ApiController
    {
        /// <summary>
        /// List of Presidents
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<USPresident>))]
        [Route("api/values/")]
        public HttpResponseMessage GetAll()
        {
            try
            { 
                var presidents = PresidentsFile.GetAll();
                return Request.CreateResponse(HttpStatusCode.OK, presidents);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message);
            }
        }

        /// <summary>
        /// Ordered list of Presidents
        /// </summary>
        /// <param name="ascendent">Indicates if the list order will be ascendent</param>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<USPresident>))]
        [Route("api/values/GetOrdered/")]
        public HttpResponseMessage GetOrdered(bool ascendent)
        {
            try
            {
                var presidents = PresidentsFile.GetAll();
                IEnumerable<USPresident> listPresidents;

                if (ascendent)
                {
                    listPresidents = presidents.Where(y => !string.IsNullOrEmpty(y.Death_day)).OrderBy(item => DateTime.Parse(item.Birthday)).ThenBy(item => DateTime.Parse(item.Death_day))
                                     .Union(presidents.Where(y => string.IsNullOrEmpty(y.Death_day)).OrderBy(item => DateTime.Parse(item.Birthday)));
                }
                else
                {
                    listPresidents = presidents.Where(y => !string.IsNullOrEmpty(y.Death_day)).OrderByDescending(item => DateTime.Parse(item.Birthday)).ThenByDescending(item => DateTime.Parse(item.Death_day))
                                     .Union(presidents.Where(y => string.IsNullOrEmpty(y.Death_day)).OrderByDescending(item => DateTime.Parse(item.Birthday)));
                }

                return Request.CreateResponse(HttpStatusCode.OK, listPresidents);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message);
            }
        }
        
        /// <summary>
        /// Get a President by name
        /// </summary>
        /// <param name="name">Filter by Name</param>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(HttpStatusCode.OK, Type = typeof(IEnumerable<USPresident>))]
        [Route("api/values/GetFiltered/")]
        public HttpResponseMessage GetFiltered(string name)
        {
            try
            {
                var presidents = PresidentsFile.GetAll();
                IEnumerable<USPresident> listPresidents = presidents.Where(y => y.President.Equals(name));
                
                return Request.CreateResponse(HttpStatusCode.OK, listPresidents);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotAcceptable, ex.Message);
            }          
        }        
    }
}
