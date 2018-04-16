Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Xml.Serialization

''' <summary>
''' Summary description for ThemeModelBase
''' </summary>
Public Class ThemeModelBase
    Private _name As String
    Private _title As String

    <XmlAttribute> _
    Public Property Name() As String
        Get
            If _name Is Nothing Then
                Return ""
            End If
            Return _name
        End Get
        Set(ByVal value As String)
            _name = value
        End Set
    End Property
    <XmlAttribute> _
    Public Property Title() As String
        Get
            If _title Is Nothing Then
                Return ""
            End If
            Return _title
        End Get
        Set(ByVal value As String)
            _title = value
        End Set
    End Property
End Class