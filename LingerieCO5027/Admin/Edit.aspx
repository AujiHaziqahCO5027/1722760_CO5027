<%@ Page Title="" Language="C#" MasterPageFile="~/L.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="LingerieCO5027.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ProductId" Height="351px" Width="402px">
        <EditItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProdcutPrice:
            <asp:TextBox ID="ProdcutPriceTextBox" runat="server" Text='<%# Bind("ProdcutPrice") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductId:
            <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProdcutPrice:
            <asp:TextBox ID="ProdcutPriceTextBox" runat="server" Text='<%# Bind("ProdcutPrice") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProdcutPrice:
            <asp:Label ID="ProdcutPriceLabel" runat="server" Text='<%# Bind("ProdcutPrice") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1722760_1722760_co5027_asg1ConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [ProdcutPrice] = @original_ProdcutPrice AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductName], [ProdcutPrice], [Quantity]) VALUES (@ProductId, @ProductName, @ProdcutPrice, @Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProdcutPrice] = @ProdcutPrice, [Quantity] = @Quantity WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [ProdcutPrice] = @original_ProdcutPrice AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
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
    <SelectParameters>
        <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" Type="Int32" />
    </SelectParameters>
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
