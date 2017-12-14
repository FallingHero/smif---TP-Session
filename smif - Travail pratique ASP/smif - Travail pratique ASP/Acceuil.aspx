<%-- Programme fait par : Frédéric Smith
    Programme remis à : Maxime Rioux
    Programme remis le 14 décembre 2017
    But du programme : Faire un site web qui met en application tous se qui à été vue durant la session. --%>
<%-- Sert à connecter un usagé et se rapeller de lui. --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="smif___Travail_pratique_ASP.Acceuil" UICulture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">
    <%-- Css pour rendre le programme beau --%>
    <style>
        .Encadrer{
            border:3px solid black;
            margin-top:5%;
            margin-left:35%;
            margin-right:35%;
            padding:5%;
            float:left;
            background-color:lightgray;
            
        }
        .but{
            margin-left:15%;
        }

    </style>
    <div class="Encadrer">
        <asp:Label id="lbNom" text="<%$ Resources:Nom %>" runat="server"></asp:Label>
        <asp:TextBox ID="tb_Nom" runat="server"></asp:TextBox>
        <%-- Pour obliger l'usager à mettre un champ --%>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1"
                    ControlToValidate="tb_Nom"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:Requis %>"
                    runat="server" ValidationGroup="connection"/>
        <br />
        <br />
        <br />
       <asp:Label id="lbEmail" text="<%$ Resources:email %>" runat="server"></asp:Label>
        <asp:TextBox ID="tb_email" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2"
                    ControlToValidate="tb_email"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:Requis %>"
                    runat="server" ValidationGroup="connection"/>
        <%-- Pour valider que la chaine est un adresse email --%>
        <asp:RegularExpressionValidator ID="validationEmail" runat="server"     
                                    ErrorMessage="<%$ Resources:verif %>" 
                                    ControlToValidate="tb_email"     
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="connection" />
        <br />
        <br />
        <br />
        <asp:ImageButton CssClass="but" Id="img_submit" runat="server" ValidationGroup="connection" ImageUrl="<%$ Resources:connecter %>" OnClick="img_submit_Click"></asp:ImageButton>
        
    </div>


</asp:Content>

