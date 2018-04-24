<%@ Control Language="vb" AutoEventWireup="true" CodeFile="BootstrapThemeSwitcher.ascx.vb" Inherits="BootstrapThemeSwitcher" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<script>

    var THEME_COOKIE_KEY = "DXBSCurrentTheme",
        DEFAULT_THEME = "Default";

    function onThemeItemClick(s, e) {
        var theme = e.item.name;
        ASPxClientUtils.SetCookie(THEME_COOKIE_KEY, theme);
        ChangeThemeOnClient(theme);
        $(document.body).removeClass("show-settings");
    }

    function showThemeSelector(s, e) {
        $(document.body).toggleClass("show-settings");
    }


    function ChangeThemeOnClient(theme) {
        $(window.top.document.body).fadeOut(200, function () {
            var $themeLink = $("#" + HiddenLink.Get("themeLinkID"));
            var path = "SwitcherResources/Content/";
            if (theme.toLowerCase() !== DEFAULT_THEME.toLowerCase())
                path += theme + "/";
            $themeLink.attr("href", path + "bootstrap.min.css");
            $(window.top.document.body).fadeIn(300);
        });
    }

</script>

<div class="pull-right">
    <dx:BootstrapButton ID="BootstrapButton1" runat="server" Text="Show theme selector" AutoPostBack="false">
        <ClientSideEvents Click="showThemeSelector" />
    </dx:BootstrapButton>
</div>

<dx:ASPxHiddenField runat="server" ID="HiddenLink" ClientInstanceName="HiddenLink">
</dx:ASPxHiddenField>

<section id="settingsbar">
    <h5>Color Themes</h5>
    <dx:BootstrapMenu runat="server" ID="themesMenu" ClientIDMode="Static" AllowSelectItem="true">
        <ClientSideEvents ItemClick="onThemeItemClick" />
    </dx:BootstrapMenu>
</section>