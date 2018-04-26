<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LingerieCO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bg-img">
  <form action="/action_page.php">
    <div class="container">
   
         <p><asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label></p>
         <p><asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="360px" MaxLength="20"></asp:TextBox></p>
            <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="*Please enter your Name" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator></p>

         <p><asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="360px" MaxLength="50"></asp:TextBox></p>
        <p><asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="*Please enter a valid email address" ControlToValidate="TextBoxEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator></p>
        <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*Please Enter a valid Email Address" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator></p>
        
        <p><asp:Label ID="LabelSubject" runat="server" Text="Subject:"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxSubject" runat="server" Height="25px" Width="360px" MaxLength="30"></asp:TextBox></p>
         <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorSubject" runat="server" ErrorMessage="*Please enter the Subject of enquiry" ControlToValidate="TextBoxSubject"></asp:RequiredFieldValidator>   </p>

        <p><asp:Label ID="LabelMessage" runat="server" Text="Message:"></asp:Label></p>
        <p><asp:TextBox ID="TextBoxMessage" runat="server" Height="235px" Width="600px" MaxLength="150" TextMode="MultiLine"></asp:TextBox></p>
        <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorMsg" runat="server" ErrorMessage="*Please enter your message or enquiry" ControlToValidate="TextBoxMessage"></asp:RequiredFieldValidator></p>

        
         <p>
             <asp:Button ID="btnSendE" runat="server" OnClick="btnSendE_Click" Text="Send Enquiry" />
         </p>
         <p><asp:Literal ID="LiteralMessage" runat="server"></asp:Literal></p>
        </form>

        </div>

            
    <h2>Find Us Here:</h2>
          <div id="map"></div>

          <script>
              function myMap() {
                  var myLatLng = { lat: 4.8857309, lng: 114.9316692 };

                  var map = new google.maps.Map(document.getElementById('map'), {
                      zoom: 15,
                      center: myLatLng
                  });

                  var marker = new google.maps.Marker({
                      position: myLatLng,
                      map: map,
                      title: 'Hello!'
                  });

              }
              </script>
 
        <div id="googleMap" style="width:700px; height:500px; text-align: left;"></div>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJLqlwd0gYQttmKhkV-a6nYripBav2yn0&callback=myMap2"></script>
 
</asp:Content>
