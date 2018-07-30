using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using WebAPI.Models;

namespace WebAPI.Helpers
{
    /// <summary>
    /// Helper to manage the file access
    /// </summary>
    public class PresidentsFile
    {        
        /// <summary>
        /// Get full list of presidents
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<USPresident> GetAll()
        {
            try
            {
                string presidentsText = LoadFile();
                var presidents = JsonConvert.DeserializeObject<USPresident[]>(presidentsText);
                return presidents;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Get list of presidents from the file
        /// </summary>
        /// <returns></returns>
        private static string LoadFile()
        {
            try
            {
                string filePath = Path.GetDirectoryName(new Uri(Assembly.GetExecutingAssembly().CodeBase).LocalPath) + "\\";

                if (File.Exists(filePath + "presidents.json"))
                {
                    string presidentsText = File.ReadAllText(filePath + "presidents.json");
                    return presidentsText;
                }
                else
                {
                    throw new Exception("File not found");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}