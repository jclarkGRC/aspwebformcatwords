<%@ Page Title="Category Words" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="WebFormsHelloWorld.Game" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <div class="clearfix">
            </div>
            <div ID="usedWordsList">
                <p>Used Words:</p>
                <asp:ListBox ID="usedWords" runat="server"></asp:ListBox>
            </div>
        <div class="clearfix">
            <p>Current category is:<asp:Literal ID="currentCategory" runat="server"></asp:Literal></p>
            <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Literal ID="msg" runat="server">Time Left:</asp:Literal>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="secondsRemaining" EventName="tick" />
            </Triggers>
            </asp:UpdatePanel>
            <br />
            <asp:Label ID="SavedWord" runat="server" Text="Enter a word to start playing..."></asp:Label><br />
            <asp:TextBox ID="CurrentWord" runat="server"></asp:TextBox>
            <br />
            <asp:Timer ID="secondsRemaining" OnTick="CountSeconds_Tick" Interval="1000" runat="server" />
            <asp:Button ID="SubmitWord" runat="server" OnClick="Save_Word" Text="Submit Word" />
            
            </div>
    </asp:Content>
