<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LingerieCO5027.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 style="color: #FF5050; background-color: #FFFFFF" class="auto-style2">HI, Welcome!</h2>
    <br />
    
    <table>
         <tr>
    <th style="height: 32px; width: 150px">I don't have account yet, SIGN UP below</th>
    </tr>
        <tr>
  	<td style="width: 100px" class="auto-style1">
     <asp:Label ID="Label3" runat="server" Text="Username" style="text-align: center; font-weight: 700;"></asp:Label>
&nbsp;<br/>
  			<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
            <asp:Label ID="Label4" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
        <br />
            <asp:TextBox ID="txtpswd" runat="server"></asp:TextBox>
&nbsp;<br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        <br />
            <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click1" />
        <br />
        &nbsp;<br />
        <br/>
          </td>
		</table>
  

		
		<p> 
            &nbsp;</p>
</asp:Content>
