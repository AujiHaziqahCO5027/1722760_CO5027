<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LingerieCO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: smaller;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
  <div style="text-align:center">
       <div class="row">
       <h2 style="color: #FF5050; background-color: #FFFFFF" class="auto-style2"><strong><span class="auto-style1">Contact Us</span></strong></h2>
           <p><strong>If you have any enquiry, YOU can simply contact us!</strong></p>
         <p><asp:Label ID="LabelName" runat="server" Text="Name" style="font-weight: 700"></asp:Label></p>
         <p><asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="360px" MaxLength="20"></asp:TextBox></p>
            <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="*Please enter your Name" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator></p>

         <p><asp:Label ID="LabelEmail" runat="server" Text="Email:" style="font-weight: 700"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="360px" MaxLength="50"></asp:TextBox></p>
        <p><asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="*Please enter a valid email address" ControlToValidate="TextBoxEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator></p>
        <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*Please Enter a valid Email Address" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator></p>
        
        <p><asp:Label ID="LabelSubject" runat="server" Text="Subject:" style="font-weight: 700"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxSubject" runat="server" Height="25px" Width="360px" MaxLength="30"></asp:TextBox></p>
         <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorSubject" runat="server" ErrorMessage="*Please enter the Subject of enquiry" ControlToValidate="TextBoxSubject"></asp:RequiredFieldValidator>   </p>

        <p><asp:Label ID="LabelMessage" runat="server" Text="Message:" style="font-weight: 700"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxMessage" runat="server" Height="170px" Width="600px" MaxLength="150" TextMode="MultiLine"></asp:TextBox></p>
        <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorMsg" runat="server" ErrorMessage="*Please enter your message or enquiry" ControlToValidate="TextBoxMessage"></asp:RequiredFieldValidator></p>

        
         <p>
             <asp:Button ID="btnSendE" runat="server" OnClick="btnSendE_Click" Text="Send Enquiry" />
         </p>
         <p><asp:Literal ID="LiteralMessage" runat="server"></asp:Literal></p>
                   
         </div>

        </div>


    <h3>Find Us Here:</h3>

<div id="map" style="width:100%;height:400px;"></div>

<script>
    function myMap() {
        var mapCanvas = document.getElementById("map");
        var mapOptions = {
            center: new google.maps.LatLng(51.5, -0.2), zoom: 10
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({ position: myCenter });
        marker.setMap(map);
    }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD5DBRhs-Z6iFbS9KUsbyeHk8UptAjHC4g&callback=myMap"></script>
    
        
    </div>
</asp:Content>
