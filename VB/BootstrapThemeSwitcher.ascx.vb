Option Infer On

Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class BootstrapThemeSwitcher
    Inherits UserControl

    Public Const DefaultTheme As String = "default"
    Public Const CurrentThemeCookieKey As String = "DXBSCurrentTheme"


    Private themeLinkID_Renamed As String

    Public Property ThemeLinkID() As String
        Get
            Return HiddenLink("themeLinkID").ToString()
        End Get
        Set(ByVal value As String)
            HiddenLink("themeLinkID") = value
        End Set
    End Property


    Public ReadOnly Property CurrentTheme() As String
        Get
            If HttpContext.Current.Request.Cookies(CurrentThemeCookieKey) IsNot Nothing Then
                Return HttpContext.Current.Request.Cookies(CurrentThemeCookieKey).Value
            End If
            Return DefaultTheme
        End Get
    End Property

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        FillThemesMenu()

    End Sub

    Protected Sub FillThemesMenu()

        Dim currentTheme_Renamed = CurrentTheme

        For Each theme_Renamed In BootstrapThemesModel.Current.Themes
            Dim item = themesMenu.Items.Add(theme_Renamed.Title, theme_Renamed.Name)
            item.IconCssClass = theme_Renamed.Name
            If theme_Renamed.Name = currentTheme_Renamed Then
                item.Selected = True
            End If
        Next theme_Renamed
    End Sub
End Class