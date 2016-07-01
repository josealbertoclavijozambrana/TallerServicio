using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Usuario : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            CapaDatos.Usuarios persona = new CapaDatos.Usuarios();
            persona.usuario = TextBox1.Text;
            persona.contrasena = TextBox2.Text;
            persona.nombrecompleto = TextBox3.Text;
            moConeccion.InsertarUsuario(persona);

            Response.Redirect("Login.aspx");

            //persona.usuario = TextBox1;
            //persona.contrasena = TextBox2;
            //persona.nombre = TextBox3.Text;

            //usuarioes.usuario = TextBox1.Text 

        }
    }
}