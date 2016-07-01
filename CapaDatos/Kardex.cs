using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
     public  class Kardex
    {
        public int invetario { get; set; }
        public string fk_producto { get; set; }
        public int cantidad { get; set; }
        public string precio { get; set; }
        public string total { get; set; }
        public string fk_transaccion { get; set; }
    }
}
