<%@ Page Title="" Language="C#" UICulture="auto" MasterPageFile="~/mastersecondaire.master" AutoEventWireup="true" CodeBehind="NewYork.aspx.cs" Inherits="smif___Travail_pratique_ASP.NewYork" %>
<%-- Les 3 prochain web form affiche le nom d'une ville et deux image de celle-ci --%>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Droite" runat="server">
           <style>
        .Encadrer{
            border:3px solid black;
            margin-top:1%;
            margin-left:3%;
            padding:5%;
            float:left;
            background-color:lightgray;
            width:70%;
        }
        .imgage{
            width:44%;
        }
        .imgage2{
            width:44%;
            margin-left:10%
        }
          .lb{
            margin-left:43%;
            margin-right:43%

        }

    </style>
    <div class="Encadrer">
        <asp:Label cssclass="lb" ID="text" Text="New-York" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
       <asp:Image CssClass="imgage" ID="timesquare" runat="server" ImageUrl="~/timequare.jpg" />
        <asp:Image CssClass="imgage2" ID="empire" runat="server" ImageUrl="~/empire.jpg" />
    </div>
</asp:Content>
