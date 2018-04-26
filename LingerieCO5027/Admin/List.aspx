<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="LingerieCO5027.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProdcutPrice" HeaderText="ProdcutPrice" SortExpression="ProdcutPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="UploadImage.aspx?ProductId={0}" Text="UploadImage" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1722760_1722760_co5027_asg1ConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [ProdcutPrice] = @original_ProdcutPrice AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductName], [ProdcutPrice], [Quantity]) VALUES (@ProductId, @ProductName, @ProdcutPrice, @Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProdcutPrice] = @ProdcutPrice, [Quantity] = @Quantity WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [ProdcutPrice] = @original_ProdcutPrice AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProdcutPrice" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProdcutPrice" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProdcutPrice" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProdcutPrice" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
