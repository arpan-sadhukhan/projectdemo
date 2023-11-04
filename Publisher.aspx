<%@ Page Title="Publisher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="WebAppProjectAzure.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Publisher</h3>
        <p>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                    <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksDbConnectionString2 %>" DeleteCommand="DELETE FROM [Publisher] WHERE [PId] = @original_PId AND [PublisherName] = @original_PublisherName" InsertCommand="INSERT INTO [Publisher] ([PId], [PublisherName]) VALUES (@PId, @PublisherName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:booksDbConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [PublisherName] = @PublisherName WHERE [PId] = @original_PId AND [PublisherName] = @original_PublisherName">
                <DeleteParameters>
                    <asp:Parameter Name="original_PId" Type="Int32" />
                    <asp:Parameter Name="original_PublisherName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PId" Type="Int32" />
                    <asp:Parameter Name="PublisherName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PublisherName" Type="String" />
                    <asp:Parameter Name="original_PId" Type="Int32" />
                    <asp:Parameter Name="original_PublisherName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
       
    </main>
</asp:Content>
