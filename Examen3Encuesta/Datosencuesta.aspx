<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Datosencuesta.aspx.cs" Inherits="Examen3Encuesta.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">
        .auto-style3 {
            border: solid 2px black;
            min-width: 80%;
            margin-left: 163px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
     <p>
         <h2>Resultado de las encuestas</h2>
     </p>
 </div>

     <asp:GridView runat="server" ID="datagrid" PageSize="10"
         CssClass="auto-style3" AutoGenerateColumns="true" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
         RowStyle-CssClass="rows" AllowPaging="True" OnSelectedIndexChanged="Page_Load" Height="186px" Width="731px"    />


</asp:Content>
