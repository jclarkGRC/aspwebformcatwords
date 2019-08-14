<%@ Page Title="Category Words" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="WebFormsHelloWorld.Game" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <div class="clearfix">
            <div id="saveWord">
            <p>Current category is: <asp:Literal ID="currentCategory" runat="server">Please select a category</asp:Literal></p>
            <asp:Label ID="SavedWord" runat="server" Text="Enter a word to start playing..."></asp:Label><br />
            <asp:TextBox ID="CurrentWord" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="SubmitWord" runat="server" OnClick="Save_Word" Text="Submit Word" />
            <br /><br />
            </div>
            <div ID="usedWordsList">
                <p>Used Words:</p>
                <asp:ListBox ID="usedWords" runat="server"></asp:ListBox>
            </div>
        </div>
           
</asp:Content>
