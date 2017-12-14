﻿<%-- Page qui affiche une base de données modifiable --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Basedonner.aspx.cs" Inherits="smif___Travail_pratique_ASP.Basedonner" UICulture="auto"%>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">
        <style>
        .Encadrer{
            border:3px solid black;
            margin-top:5%;
            margin-left:25%;
            margin-right:25%;
            padding:5%;
            float:left;
            background-color:lightgray;
        }
        .gv{
            margin-left:25%;
            margin-right:25%;
        }
        .lb{
            margin-left:28%;
            margin-right:28%;
        }
        .lb2{
            margin-left:35%;
            margin-right:35%;
        }
        .bt{
            margin-left:35%;
            margin-right:35%;
        }



    </style>
    <div class="Encadrer">
        
        
        <asp:label cssclass="lb" id="lb" text="<%$ Resources:user %>" runat="server"></asp:label>
        <br />
        <br />
        <br />
        <asp:GridView CssClass="gv" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="#99CCFF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Calibri" PageSize="3" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="#FF9933" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nom" HeaderText="<%$ Resources:Nom %>" SortExpression="Nom" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <HeaderStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Personne WHERE Id=@Id;" UpdateCommand="Update Personne set Nom=@Nom,Email=@Email where Id=@Id" SelectCommand="SELECT * FROM [Personne]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:label cssclass="lb2" id="lb2" text="<%$ Resources:ajout %>" runat="server"></asp:label>
        <br />
        <br />
        Id : 
        <asp:TextBox ID="tb_id" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator3"
                    ControlToValidate="tb_id"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="ajout"/>
        <asp:label  id="Label1" text="<%$ Resources:Nom2 %>" runat="server"></asp:label>
        <asp:TextBox ID="tb_nom" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator2"
                    ControlToValidate="tb_nom"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="ajout"/>
        Email:
        <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1"
                    ControlToValidate="tb_email"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="ajout"/>
        <asp:RegularExpressionValidator ID="validationEmail" runat="server"     
                                    ErrorMessage="<%$ Resources:verif %>" 
                                    ControlToValidate="tb_email"     
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ajout" />
        
        <br />
        <br />
        <asp:ImageButton CssClass="bt" ID="img_ajouter" runat="server" ValidationGroup="ajout" ImageUrl="<%$ Resources:image %>" OnClick="img_ajouter_Click" />
        
        
    </div>
</asp:Content>
