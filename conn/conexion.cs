using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace conn
{
    public class conexion
    {
        DbConnection moConn;
        public conexion(string mstrCad)
        {
            this.moConn = CrearConeccion(ConfigurationManager.ConnectionStrings[mstrCad].ProviderName, ConfigurationManager.ConnectionStrings[mstrCad].ConnectionString);
        }
        private DbConnection CrearConeccion(string sProvider, string sCadena)
        {
            DbConnection moConn = null;
            DbProviderFactory pfProxy = DbProviderFactories.GetFactory(sProvider);
            moConn = pfProxy.CreateConnection();
            moConn.ConnectionString = sCadena;

            return moConn;
        }
        public void InsertarUsuario(CapaDatos.Usuarios moTabla)

        {

            string sSQL = "exec insertarusuariosn '" +  moTabla.usuario + "','"+ moTabla.contrasena +"','"+ moTabla.nombrecompleto +"'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void InsertarCliente(CapaDatos.Cliente moTabla)

        {

            string sSQL = "exec insertarclientes '" + moTabla.documentacion + "','" + moTabla.nombre + "','" + moTabla.direccion + "','"+ moTabla.telefono+"'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void InsertarVehiculo(CapaDatos.Vehiculo moTabla)

        {

            string sSQL = "exec insertvehiculo '" + moTabla.matricula + "'," + moTabla.marca + "," +moTabla.tipo+",'"+ moTabla.color + "'," + moTabla.documentacion + "";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void InsertarTransaccion(CapaDatos.transaccion moTabla)

        {

            string sSQL = "exec insertarjose '" + moTabla.fecha + "','" + moTabla.matricula +  "'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void InsertarServicio(CapaDatos.Servicios moTabla)

        {

            string sSQL = "exec insertarservicio '" + moTabla.nombre + "','" + moTabla.precio + "','" + moTabla.observacion + "','" + moTabla.estado + "','"+moTabla.fecha+"'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void Insertardetatransaccion(CapaDatos.transacciondetalle moTabla)

        {

            string sSQL = "exec insertartransacciondetalle '" + moTabla.fk_transaccion + "','" + moTabla.fk_servicio + "','" + moTabla.total +  "'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void Insertarunidad(CapaDatos.unidadmedias moTabla)

        {

            string sSQL = "exec insertarunidad '" + moTabla.nombre +  "'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }

        public void Insertarproducto(CapaDatos.Producto moTabla)

        {

            string sSQL = "exec insertarproducto '" + moTabla.nombre + "','" + moTabla.precio + "','" + moTabla.descripcion + "','" + moTabla.stock + "'," + moTabla.estado + ",'" + moTabla.unidadmedida + "'";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }
        public void InsertarKardex(CapaDatos.Kardex moTabla)

        {

            string sSQL = "exec insertarKardex " + moTabla.fk_producto + "," + moTabla.cantidad + "," + moTabla.precio + "," + moTabla.total + "," + moTabla.fk_transaccion +  "";
            DbCommand moComm = moConn.CreateCommand();
            moComm.CommandText = sSQL;
            moConn.Open();
            moComm.ExecuteNonQuery();
            moConn.Close();
        }

    }

}
