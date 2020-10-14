<%@ Page Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ContentPlaceHolderID="SiteBodyContentPlaceHolder" runat="server">
    <dx:BootstrapGridView ID="BootstrapGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CustomerID">
        <Columns>
            <dx:BootstrapGridViewTextColumn FieldName="CustomerID" Caption="Customer ID" ReadOnly="True" SettingsEditForm-Visible="False" />
            <dx:BootstrapGridViewTextColumn FieldName="CompanyName" Caption="Company Name" />
            <dx:BootstrapGridViewTextColumn FieldName="ContactName" Caption="Contact Name" />
            <dx:BootstrapGridViewTextColumn FieldName="ContactTitle" Caption="Contact Title" />
            <dx:BootstrapGridViewTextColumn FieldName="Address" />
            <dx:BootstrapGridViewTextColumn FieldName="City" />
            <dx:BootstrapGridViewTextColumn FieldName="Region" />
            <dx:BootstrapGridViewTextColumn FieldName="PostalCode" Caption="Postal Code" />
            <dx:BootstrapGridViewTextColumn FieldName="Country" />
            <dx:BootstrapGridViewTextColumn FieldName="Phone" />
            <dx:BootstrapGridViewTextColumn FieldName="Fax" />
        </Columns>
    </dx:BootstrapGridView>
    <dx:BootstrapCalendar ID="SuperBootstrapCalendar" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customers]" />
</asp:Content>