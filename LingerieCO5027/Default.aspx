﻿<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LingerieCO5027.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><table></table></HeaderTemplate>
            <ItemTemplate>
                <td>
                    <li>
                    <p><img src="/image/<%#Eval("ProductId") %>.jpg" alt="<%#Eval("ProductId") %>" width="200" height="200" /></p>
                    <a href="<%#Eval("ProductId", "Product.aspx?ProductId={0}")%>"><%#Eval("ProductName")%>"</a>
                        <%#Eval("ProdcutPrice")%>
                        <%#Eval("Quantity")%>
                        </li>

                </td>

            </ItemTemplate>
        </asp:Repeater>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1722760_1722760_co5027_asg1ConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>

</asp:Content>
