<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Calendrier.aspx.cs" Inherits="smif___Travail_pratique_ASP.Calendrier" UICulture="auto" %>
<%-- Permet de choisir une date dans un calendrier --%>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">
        <style>
        .Encadrer{
            border:3px solid black;
            margin-top:5%;
            margin-left:25%;
            margin-right:25%;
            padding:10%;
            float:left;
            background-color:lightgray;
        }
        .but{
            margin-left:22%;
        }
        .calender{
            margin-left:20%;
            text-align:center;
        }

         .calendar{
            margin-left:8%;
            text-align:center;
        }
        .butfr{
            margin-left:30%;
        }

        
    </style>

    <div class="Encadrer">
        <asp:Label ID="dispo" Text="<%$ Resources:dispo %>" runat="server"></asp:Label>
        
        <br />
        <br />
        <br />
        <asp:Calendar CssClass="<%$ Resources:calender %>" ID="calendrier" runat="server" BackColor="#99CCFF" BorderColor="Black" BorderStyle="Double" FirstDayOfWeek="Sunday" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black">
             <TitleStyle BackColor="orange" ForeColor="black" CssClass="title">
         </TitleStyle>
            <SelectedDayStyle BackColor="Orange" />
        </asp:Calendar>
        <br />
        <br />
        
         <asp:Imagebutton CssClass="<%$ Resources:but %>" ID="img_submit" ImageUrl="<%$ Resources:image %>" runat="server" OnClick="img_submit_Click" />
        <br />
        <br />
        <asp:Label ID="label1" Text="<%$ Resources:verif %>" runat="server"></asp:Label> 
    </div>
</asp:Content>
