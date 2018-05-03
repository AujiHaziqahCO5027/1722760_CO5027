<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LingerieCO5027.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 style="color: #FF5050; background-color: #FFFFFF"><strong>Featured Products</strong></h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                
                    
             
                <ul class="repeater">
                    <li>
                    <p><img src="/image/<%#Eval("ProductId") %>.jpg" alt="<%#Eval("ProductId") %>" width="300" height="400" /></p>
                    <a href="<%#Eval("ProductId", "Product.aspx?ProductId={0}")%>">
                        <h3>Product Name:</h3><%#Eval("ProductName")%></a>
                      <p><h3>Product Price</h3> <%#Eval("ProdcutPrice")%></p> 
                       <p><h3>Quantity</h3> <%#Eval("Quantity")%></p>
                    </li>
                 </ul>


            </ItemTemplate>
        </asp:Repeater>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1722760_1722760_co5027_asg1ConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>

</asp:Content>
