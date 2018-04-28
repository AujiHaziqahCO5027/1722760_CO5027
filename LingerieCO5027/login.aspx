<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LingerieCO5027.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table>
<tbody>
<tr>
<th style="height: 32px; width: 217px">Already a Member? SIGN IN</th>
<th style="height: 32px; width: 212px">Register here! </th>
             </tr>
    <tr>
<td style="width: 200px">
    <p class="auto-style1"><strong>Username</strong></p>
    <p style="text-align: center">
     
        <asp:TextBox ID="txtlognm" runat="server" Height="29px" Width="300px" ></asp:TextBox>
    </p>
    <p class="auto-style1"><strong style="text-align: left">Password</strong></p>
    <p style="text-align: center">
        <asp:TextBox ID="txtlogpswd" runat="server" Height="29px" Width="300px"></asp:TextBox>
    </p>
    <p style="text-align: center; font-weight: 700;">

        <asp:Literal ID="litResult2" runat="server"></asp:Literal>

    </p>
    <p style="text-align: center">

        <asp:Button ID="btnLog" runat="server" Text="Sign In" />
        </tr>
    </td>


    <td style="width: 200px">
       
      <p>
        <asp:Label ID="Label1" runat="server" Text="Username" style="font-weight: 700"></asp:Label></p>

             <p>

        <asp:TextBox ID="txtname" runat="server" Height="29px" Width="300px"></asp:TextBox></p>
            

    <asp:Label ID="Label2" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
             </div>
    <p>
        <asp:TextBox ID="txtpswd" runat="server" Height="29px" Width="300px"></asp:TextBox>
    </p>
    <p style="font-weight: 700" class="auto-style1">
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
             <div class="auto-style1">
    <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="Register" />
            </div>
        </td>
    </tbody>
    </table>
    </form>
    
  
     

</asp:Content>
