using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class producto : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          CapaDatos.Producto pro = new CapaDatos.Producto();


            pro.nombre = nombre.Text;
            precio.Text= Convert.ToInt32( pro.precio).ToString();
            pro.descripcion = observacion.Text;
            pro.stock = Convert.ToInt32( stock.Text);
            pro.estado = Convert.ToInt32(DropDownList2.SelectedValue).ToString();
            pro.unidadmedida = Convert.ToInt32( DropDownList1.SelectedValue);

            moConeccion.Insertarproducto(pro);


        }
    }
}