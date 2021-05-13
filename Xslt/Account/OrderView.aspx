<%@ Page Language="c#" MaintainScrollPositionOnPostback="true" CodeBehind="OrderView.aspx.cs"
    MasterPageFile="~/App_MasterPages/layout.Master" AutoEventWireup="false" Inherits="CanhCam.Web.AccountUI.OrderViewPage" %>

<%@ Register TagPrefix="Site" TagName="AccountMenu" Src="~/Account/AccountMenu.ascx" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
    <div class="wrapper-infor">
        <div class="container">
            <div class="account-page">
                <div class="row">
                    <Site:AccountMenu ID="accountMenu" runat="server" />
                    <asp:Xml ID="xmlTransformer" runat="server"></asp:Xml>
                </div>
            </div>
        </div>
    </div>
</asp:Content>