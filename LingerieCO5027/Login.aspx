<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LingerieCO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color: #FF5050; background-color: #FFFFFF" class="auto-style2">Welcome Admin!</h2>
  

    <table>
         <tr>
    <th style="height: 32px; width: 150px">Sign In here</th>
    </tr>
        <tr>
  	<td style="width: 100px" class="auto-style1">
    
    <asp:Label ID="Label1" runat="server" Text="Username:" style="font-weight: 700"></asp:Label>
    <br />
    <asp:TextBox ID="txtlognm" runat="server"></asp:TextBox>

    <br />

    <asp:Label ID="Label2" runat="server" Text="Password:" style="font-weight: 700"></asp:Label>
    <br />
    <asp:TextBox ID="txtlogpswd" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnLog" runat="server" Text="Sign In" OnClick="btnLog_Click" />
    <br />
    <asp:Literal ID="litResult2" runat="server"></asp:Literal>
          </td>
    </tr>
          </table>
    
</asp:Content>
