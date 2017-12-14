<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Connecter.aspx.cs" Inherits="smif___Travail_pratique_ASP.Connecter" UICulture="auto" %>
<%-- Affiche le nom de l'usager et un mot de bienvenue --%>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">
    <style>
        .Encadrer{
            border:3px solid black;
            margin-top:5%;
            margin-left:38.5%;
            margin-right:38.5%;
            padding:5%;
            float:left;
            background-color:lightgray;
        }



    </style>
            <div class="Encadrer">
        <asp:Label ID="bonjour" Text="<%$ Resources:Bonjour %>" runat="server"></asp:Label>
        <asp:Label ID="lb_nom" runat="server"></asp:Label>
        ,
        <br />
        <br />
        <br />
        <asp:Label ID="message" Text="<%$ Resources:message %>" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" Text="<%$ Resources:rabais %>" runat="server"></asp:Label>
        <asp:HyperLink ID="lien" Text="<%$ Resources:lien %>" NavigateUrl="https://www.trivago.ca/fr" runat="server"></asp:HyperLink>
        .
    </div>


</asp:Content>