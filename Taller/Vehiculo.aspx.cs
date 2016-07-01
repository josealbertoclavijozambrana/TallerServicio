using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Vehiculo : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {



            
            CapaDatos.Vehiculo persona = new CapaDatos.Vehiculo();
            persona.matricula = Documentacion.Text;
            persona.marca = Convert.ToInt32(DropDownList3.SelectedValue).ToString();
            persona.color = Direccion.Text;
            persona.tipo = Convert.ToInt32(DropDownList2.SelectedValue).ToString();
            persona.documentacion = Convert.ToInt32(DropDownList1.SelectedValue).ToString() ;
            moConeccion.InsertarVehiculo(persona);

            //int? id = 0;


            //persona.documentacion = Documentacion.Text;
            //persona.nombre = Nombre.Text;
            //persona.direccion = Direccion.Text;
            //persona.telefono = Telefono.Text;
            //moConeccion.InsertarCliente(persona);
            ////Response.Redirect("Login.aspx");

            ////persona.usuario = TextBox1;
            ////persona.contrasena = TextBox2;
            ////persona.nombre = TextBox3.Text;

            ////usuarioes.usuario = TextBox1.Text 

        }
    }
}