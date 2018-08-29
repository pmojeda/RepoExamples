using System;
using System.Runtime.Serialization;

namespace Componentes
{
    public class ExceptionAplicacion : Exception, ISerializable
    {
        public ExceptionAplicacion() { }
        public ExceptionAplicacion(string Mensaje) : base(Mensaje) { }
        public ExceptionAplicacion(string Mensaje, Exception inner) : base(Mensaje, inner) { }
        protected ExceptionAplicacion(SerializationInfo Info, StreamingContext Contexto) : base(Info, Contexto) { }

    }
}
