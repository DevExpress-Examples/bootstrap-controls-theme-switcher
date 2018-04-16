Option Infer On

Imports System
Imports System.Web.Optimization

Partial Public Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        Dim themeName As String = If(SuperBootstrapThemeSwitcher.CurrentTheme.Equals("Default", StringComparison.InvariantCultureIgnoreCase), "", (SuperBootstrapThemeSwitcher.CurrentTheme & "/"))
        themeLink.Attributes("href") = String.Format("~/SwitcherResources/Content/{0}bootstrap.min.css", themeName)
        Dim v = themeLink.Attributes("href")
        SuperBootstrapThemeSwitcher.ThemeLinkID = themeLink.ID
    End Sub

    Protected Overrides Sub Construct()
        BundleConfig.RegisterBundles(BundleTable.Bundles) 'You can register it in Global.asax
        MyBase.Construct()
    End Sub
End Class
