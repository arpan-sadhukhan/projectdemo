<%@ Page Title="Author" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="WebAppProjectAzure.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Author</h3>
        <p>

            <asp:GridView ID="GvAuthor" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="AId" HeaderText="AId" ReadOnly="True" SortExpression="AId" />
                    <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksDbConnectionString3 %>" DeleteCommand="DELETE FROM [Author] WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName" InsertCommand="INSERT INTO [Author] ([AId], [AuthorName]) VALUES (@AId, @AuthorName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:booksDbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [AuthorName] = @AuthorName WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName">
                <DeleteParameters>
                    <asp:Parameter Name="original_AId" Type="Int32" />
                    <asp:Parameter Name="original_AuthorName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AId" Type="Int32" />
                    <asp:Parameter Name="AuthorName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AuthorName" Type="String" />
                    <asp:Parameter Name="original_AId" Type="Int32" />
                    <asp:Parameter Name="original_AuthorName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
    </main>
</asp:Content>
