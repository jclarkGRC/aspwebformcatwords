<%@ Page Title="Category Words" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsHelloWorld._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Category Words</h1>
    <p>
       This is a simple yet fun word game. The idea is to guess as many words as you
       can to the related topic chosen at the beginning of the game. The trick is you 
       only have 30 seconds for each guess. If you can't guess any more words your time 
       is up! Good Luck!
    </p>
    <div>
        <h4>Please choose a category...</h4>
        <asp:DropDownList ID="CategoriesDropDownList" runat="server">
            <asp:ListItem>Cars</asp:ListItem>
            <asp:ListItem>Animals</asp:ListItem>
            <asp:ListItem>Movies</asp:ListItem>
            <asp:ListItem>People Names</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button  ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
