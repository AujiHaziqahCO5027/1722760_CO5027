<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LingerieCO5027.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
&nbsp;<br/>
  			<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <br />
            <asp:TextBox ID="txtpswd" runat="server"></asp:TextBox>
&nbsp;<br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        <br />
            <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click1" />
        <br />
        &nbsp;<br />
        <br/>
		
		</div>
		
		<p> 
            &nbsp;</p>
</asp:Content>
