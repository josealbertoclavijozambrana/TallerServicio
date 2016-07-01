using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class transacciondetalle
    {
        public int transaccion_id {get;set;}
        public int fk_transaccion { get; set; }
        public int fk_servicio { get; set; }
        public int total { get; set; }
    
    }
}
