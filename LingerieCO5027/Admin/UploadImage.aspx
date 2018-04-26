<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="LingerieCO5027.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="Imgupcontrol" runat="server" /><asp:Image ID="Img" runat="server" Height="205px" Width="239px" />
    <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload Image" />
</asp:Content>
