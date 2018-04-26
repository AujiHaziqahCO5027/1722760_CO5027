<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LingerieCO5027.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   
     <h2 style="text-align: center">Registeration Form</h2>
    <p>
      
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <p>
        <asp:TextBox ID="txtpswd" runat="server"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
    <br />
    <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="Register" />
    <br />
    <br />
 

   
    <h2>Login</h2>
    <p>&nbsp;</p>
        <
    <p>Username</p>
    <p>
        <asp:TextBox ID="txtlognm" runat="server"></asp:TextBox>
    </p>
    <p>Password</p>
    <p>
        <asp:TextBox ID="txtlogpswd" runat="server"></asp:TextBox>
    </p>
    <p>

        <asp:Literal ID="litResult2" runat="server"></asp:Literal>

    </p>
    <p>

        <asp:Button ID="btnLog" runat="server" Text="Sign In" />

    </p>
        
 

</asp:Content>
