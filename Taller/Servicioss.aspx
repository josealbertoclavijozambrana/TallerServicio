<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Servicioss.aspx.cs" Inherits="Taller.Servicioss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="row">
        <div  class="col-md-6" itemid="u">
          




            </br></br>
            </br></br>
              <div>
                  <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>

            </div>
               
            <div>
                <asp:TextBox ID="nombre" runat="server"  CssClass="form-control" ></asp:TextBox>

            </div>
            <div>

   <asp:Label ID="Label1" runat="server" Text="precio"></asp:Label>
            </div>

            <asp:TextBox ID="precio" runat="server"></asp:TextBox>
          <div>      
     <asp:Label ID="Label4" runat="server" Text="observacion"></asp:Label>   
  </div>
 <asp:TextBox ID="Direccion" runat="server"  CssClass="form-control" ></asp:TextBox>
<div>
     <asp:Label ID="Label5" runat="server" Text=" estado"></asp:Label>   
    </div>          
         <asp:DropDownList ID="DropDownList1" runat="server">
                    
                        <asp:ListItem Text="No Disponible" value="1"/>
                        <asp:ListItem Text="Disponible" value="0"/>

                    </asp:DropDownList>
           
                
  

            <br/><br/>
                <div class="form-group">
            <label>Fecha de servicio </label>
            <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" placeholder="Fecha de Salida"> </asp:TextBox>
                                <script type="text/javascript">
                                    var picker = new Pikaday(
                                        {
                                            field: document.getElementById('<%= txtFecha.ClientID %>'),
                                            firstDay: 1,
                                            minDate: new Date('2000-01-01'),
                                            maxDate: new Date('2020-01-01'),
                                            yearRange: [2000, 2020],
                                            numberOfMonths: 1,
                                            theme: 'dark-theme'
                                        });
                                </script>

        </div>

 
      <div>

  </br></br>

  <asp:Button ID="Button1" runat="server" Text="Registrar Servicio"  OnClick="Button1_Click1"></asp:Button>  
          <asp:Button ID="Button2" runat="server" Text="Lista Servicio" OnClick="Button2_Click" />     
       </div>
      </div>

    </section>
</asp:Content>
