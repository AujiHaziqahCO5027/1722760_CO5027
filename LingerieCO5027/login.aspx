<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LingerieCO5027.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="row">
     <div class="column">
         <form action="/action_page.php">
         <div style="text-align:center">
     <h2 style="text-align: center">Registeration Form</h2>
    <p>
      <p>
        <asp:Label ID="Label1" runat="server" Text="Username" style="font-weight: 700"></asp:Label></p>

        <asp:TextBox ID="txtname" runat="server" Height="29px" Width="300px"></asp:TextBox>
    </p>

    <asp:Label ID="Label2" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
    <p>
        <asp:TextBox ID="txtpswd" runat="server" Height="29px" Width="300px"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p style="font-weight: 700">
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
    <br />
    <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="Register" />
    </div>
             </form>
         </div>
        </div>

    <div class="row">
          <div class="column">
    <h2>Login</h2>
    <p>&nbsp;</p>
        
    <p class="auto-style1"><strong>Username</strong></p>
    <p style="text-align: center">
     
        <asp:TextBox ID="txtlognm" runat="server" Height="29px" Width="300px" ></asp:TextBox>
    </p>
    <p class="auto-style1"><strong>Password</strong></p>
    <p style="text-align: center">
        <asp:TextBox ID="txtlogpswd" runat="server" Height="29px" Width="300px"></asp:TextBox>
    </p>
    <p style="text-align: center; font-weight: 700;">

        <asp:Literal ID="litResult2" runat="server"></asp:Literal>

    </p>
    <p style="text-align: center">

        <asp:Button ID="btnLog" runat="server" Text="Sign In" />

    </p>
       
       </div>
        </div>
 

</asp:Content>
