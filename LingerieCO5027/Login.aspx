<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LingerieCO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
    <br />
    <asp:TextBox ID="txtlognm" runat="server"></asp:TextBox>

    <br />

    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtlogpswd" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnLog" runat="server" Text="Button" OnClick="btnLog_Click" />
    <br />
    <asp:Literal ID="litResult2" runat="server"></asp:Literal>
</asp:Content>
