<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Taller.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <div class="form-group">

                    <asp:Label ID="Label2" runat="server" Text="Documentacion"></asp:Label>
                    <asp:TextBox ID="Documentacion" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="Nombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>

                    <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Telefono"></asp:Label>

                    <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Registrar Usuario" OnClick="Button1_Click1"></asp:Button>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ListaCliente" />
            </div>
            <div class="col-md-2">
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
