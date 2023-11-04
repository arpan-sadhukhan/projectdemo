<%@ Page Title="Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebAppProjectAzure.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Category</h3>
        <p id="GvCategory">

           

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CatId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" SortExpression="CatId" />
                    <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksDbConnectionString4 %>" DeleteCommand="DELETE FROM [Category] WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName" InsertCommand="INSERT INTO [Category] ([CatId], [CatName]) VALUES (@CatId, @CatName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:booksDbConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName">
                <DeleteParameters>
                    <asp:Parameter Name="original_CatId" Type="Int32" />
                    <asp:Parameter Name="original_CatName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CatId" Type="Int32" />
                    <asp:Parameter Name="CatName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CatName" Type="String" />
                    <asp:Parameter Name="original_CatId" Type="Int32" />
                    <asp:Parameter Name="original_CatName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

           

        </p>
       
    </main>
</asp:Content>
