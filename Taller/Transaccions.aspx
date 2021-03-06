﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Transaccions.aspx.cs" Inherits="Taller.Transaccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="form-group">
            <label>Fecha de transaccion </label>
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

    <br /><br />
<div>

    <asp:Label ID="Label2" runat="server" Text="Vehiculo"></asp:Label>
    <asp:DropDownList ID="Vehiculo" runat="server" DataSourceID="SqlDataSource1" DataTextField="color" DataValueField="Matricula"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [Matricula], [Color] FROM [Vehiculo]"></asp:SqlDataSource>
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ntransaccion" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="307px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Ntransaccion" HeaderText="Ntransaccion" InsertVisible="False" ReadOnly="True" SortExpression="Ntransaccion" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT t.[Ntransaccion], t.[fecha], t.[Matricula], v.[Color]FROM [Transaccion] t, [Vehiculo] v
where v.matricula=t.matricula;"></asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" style="height: 29px" />
</div>
</asp:Content>
