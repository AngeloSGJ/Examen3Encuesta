<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Examen3Encuesta.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">
        .auto-style3 {
            border: solid 2px black;
            min-width: 80%;
            margin-left: 163px;
        }
    </style>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container text-center">
     <p>
         <h2>Realizar Encuesta</h2>
     </p>
 </div>
     <asp:GridView runat="server" ID="datagrid" PageSize="10"
         CssClass="auto-style3" AutoGenerateColumns="true" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
         RowStyle-CssClass="rows" AllowPaging="True" OnSelectedIndexChanged="Page_Load" Height="186px" Width="731px"    />
     <div class="container text-center">
         Numero de encuesta:
        <asp:TextBox ID="tnum" class="from-control" runat="server" CssClass="offset-sm-0" Width="126px"></asp:TextBox>
        Digite su nombre:
        <asp:TextBox ID="tnombre" class="from-control" runat="server"></asp:TextBox>
        Digite su edad:
        <asp:TextBox ID="tedad" class="from-control" runat="server" ></asp:TextBox>
        Ingrese su correo:
         <asp:TextBox ID="tcorreo" class="from-control" runat="server"></asp:TextBox>
        Ingrese uno de los tres partidos a quien dara su voto: PLN, PUSC, PAC.
         <asp:TextBox ID="tpartido" class="from-control" runat="server"></asp:TextBox>
    </div>

     <div class="container text-center">
<asp:Button ID="Button1" runat="server" class="btn btn-outline-primary" Text="Subir encuesta." OnClick="Button1_Click" />


</div>
</asp:Content>
