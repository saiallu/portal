<%@ Page AutoEventWireup="True" Inherits="Appleseed.Error.GeneralError" Language="c#"
    CodeBehind="GeneralError.aspx.cs" MasterPageFile="~/Shared/SiteMasterDefault.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">
    <div style="overflow: scroll; padding: 5 5 5 5">
        <asp:PlaceHolder ID="PageContent" runat="server"></asp:PlaceHolder>
    </div>
</asp:Content>
