<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LingerieCO5027.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color: #FF5050; background-color: #FFFFFF" class="auto-style1">Welcome Admin!</h2>
    <h4 style="color: cornflowerblue; background-color: #FFFFFF" class="auto-style1">What would you like to do?</h4>
    <table>
        <tr>
   <td class="auto-style1"><a href="~/Admin/Add.aspx" runat="server">Add Products</a></td> 
    <td class="auto-style1"><a href="~/Admin/test.aspx" runat="server">Edit Product</a></td>
    <td class="auto-style1"><a href="~/Admin/List.aspx" runat="server">List of Products</a></td>
            </tr>
        </table>

</asp:Content>
