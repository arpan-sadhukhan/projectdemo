<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppProjectAzure._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Books</h1>
           
            </section>
        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
               
                <asp:GridView ID="GvBooks" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" SortExpression="BookId" />
                        <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                        <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                        <asp:BoundField DataField="BookAuther" HeaderText="BookAuther" SortExpression="BookAuther" />
                        <asp:BoundField DataField="BookCategory" HeaderText="BookCategory" SortExpression="BookCategory" />
                        <asp:BoundField DataField="BookPublisher" HeaderText="BookPublisher" SortExpression="BookPublisher" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksDbConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuther] = @original_BookAuther) OR ([BookAuther] IS NULL AND @original_BookAuther IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))" InsertCommand="INSERT INTO [Book] ([BookId], [BookName], [BookPrice], [BookAuther], [BookCategory], [BookPublisher]) VALUES (@BookId, @BookName, @BookPrice, @BookAuther, @BookCategory, @BookPublisher)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:booksDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [BookPrice] = @BookPrice, [BookAuther] = @BookAuther, [BookCategory] = @BookCategory, [BookPublisher] = @BookPublisher WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuther] = @original_BookAuther) OR ([BookAuther] IS NULL AND @original_BookAuther IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuther" Type="Int32" />
                        <asp:Parameter Name="original_BookCategory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookId" Type="Int32" />
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuther" Type="Int32" />
                        <asp:Parameter Name="BookCategory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuther" Type="Int32" />
                        <asp:Parameter Name="BookCategory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuther" Type="Int32" />
                        <asp:Parameter Name="original_BookCategory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
            </section>
        </div>
    </main>

</asp:Content>
