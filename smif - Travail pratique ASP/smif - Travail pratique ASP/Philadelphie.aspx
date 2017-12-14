<%@ Page Title="" Language="C#" UICulture="auto" MasterPageFile="~/mastersecondaire.master" AutoEventWireup="true" CodeBehind="Philadelphie.aspx.cs" Inherits="smif___Travail_pratique_ASP.Philadelphie"  %>

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
        <asp:Label cssclass="lb" ID="text" Text="<% $ Resources:Phil  %>" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
       <asp:Image CssClass="imgage" ID="cloche" runat="server" ImageUrl="~/cloche.jpg" />
        <asp:Image CssClass="imgage2" ID="phil" runat="server" ImageUrl="~/phil.jpg" />
    </div>
</asp:Content>