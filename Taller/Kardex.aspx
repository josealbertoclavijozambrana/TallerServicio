<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Kardex.aspx.cs" Inherits="Taller.Kardex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="row">
        <div  class="col-md-6" itemid="u">
      <di>

<asp:Label ID="Label1" runat="server" Text="producto"></asp:Label>
    </di>
    <div>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="n_producto"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [nombre], [n_producto] FROM [Producto]"></asp:SqlDataSource>
    </div>

        <di>

<asp:Label ID="Label2" runat="server" Text="cantidad"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="cantidad" runat="server"></asp:TextBox>
    </div>

       <di>

<asp:Label ID="Label3" runat="server" Text="precio"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="precio" runat="server"></asp:TextBox>
    </div>

        <di>

<asp:Label ID="Label4" runat="server" Text="total"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="total" runat="server"></asp:TextBox>
    </div>

           <di>

 <asp:Label ID="Label5" runat="server" Text=" Transaccion"></asp:Label>   
              
           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="fk_servicio" DataValueField="transaccion_id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [transaccion_id], [fk_servicio] FROM [TransaccionDetalle]"></asp:SqlDataSource>
    <div>
        



    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
   </div>

       </section>
</asp:Content>
