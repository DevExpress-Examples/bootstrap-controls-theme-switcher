Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Optimization

''' <summary>
''' Summary description for BundleConfig
''' </summary>
Public Class BundleConfig
    Public Shared Sub RegisterBundles(ByVal bundles As BundleCollection)
        bundles.Add((New ScriptBundle("~/bundles/scripts")).Include("~/SwitcherResources/Scripts/jquery-{version}.js", "~/SwitcherResources/Scripts/bootstrap.min.js"))

        bundles.Add((New StyleBundle("~/bundles/styles")).Include("~/SwitcherResources/Content/themes.css", "~/SwitcherResources/Content/pages.css"))

        BundleTable.EnableOptimizations = True
    End Sub
End Class