<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="LingerieCO5027.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form method="post" action="./SignIn.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="K/6K2IM+d0juW5aYX4q/pS71JDY61MrpuDc1T5/8rh4Q5zrEkusIgBFaySMQRQbDzH+CFTS0PSezG4dXOwPk7l6b8mj4qY09A9IVekHLOcE=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="ABDBD7AB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="mggjSHD78iYBhEOaXT80dbdecEH02XNXGO//IMrPHaaKM0KMCfTaA9FMJcMg+vrb/6ljhIIUJA/4NReBlUt37FpqP69dhrtybxaZTdHLgNxxyT1KKIRj8dpI1zxBww12foxs3mtYxcAvmFsEzReYV00PS6sG5nVERJjiiwDcC2xfP+9tleAF1idwJkOnu3DKFQceGi3Fn0uSkrdxh4/1NGZt4h82oSSM214VqM7iYDQ=" />
</div>
    <table>
    <tr>
    <th style="height: 32px; width: 150px">Already a Member? Sign in Here!</th>
    <th style="height: 32px; width: 150px">I don't have account yet, SIGN UP below</th>
    </tr>


  <tr>
  	<td style="width: 100px" class="auto-style1">
  
 	    <asp:Label ID="Label1" runat="server" style="text-align: center" Text="Username"></asp:Label>
        <br/>
  			<asp:TextBox ID="txtlognm" runat="server"></asp:TextBox>
&nbsp;<br/>
  			<br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtlogpswd" runat="server"></asp:TextBox>
&nbsp;<br/>
  			<asp:Literal ID="litResult2" runat="server"></asp:Literal>
  			<br />
        <asp:Button ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" />
&nbsp;<br />
        <br />
         
  	</td>


  	
  	<td style="width: 100px" class="auto-style1">
        <div class="auto-style1">
        <br />
        <br />
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
  	</td>
  	
</tr>
</table>
</form>









</asp:Content>
