using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
   public class Producto
    {
        public int producto_id { get; set; }
        public string nombre { get; set; }
        public int precio { get; set; }
        public string descripcion { get; set; }
        public int stock { get; set; }
        public string estado { get; set; }
        public int unidadmedida { get; set; }
    }
}
