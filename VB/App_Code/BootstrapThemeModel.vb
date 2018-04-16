Imports System
Imports System.Collections.Generic
Imports System.IO
Imports System.Xml
Imports System.Xml.Serialization

''' <summary>
''' Summary description for ThemeModel
''' </summary>
<XmlRoot("Themes")> _
Public Class BootstrapThemesModel
    Private Const ResourcePath As String= "SwitcherResources\Themes.xml"

    Private Shared current_Renamed As BootstrapThemesModel
    Private Shared ReadOnly currentLock As New Object()
    Public Shared ReadOnly Property Current() As BootstrapThemesModel
        Get
            SyncLock currentLock
                If current_Renamed Is Nothing Then
                    Using fileStream As New FileStream(AppDomain.CurrentDomain.BaseDirectory & "\" & ResourcePath, FileMode.Open)
                        Dim reader As XmlReader = XmlReader.Create(fileStream)
                        Dim serializer As New XmlSerializer(GetType(BootstrapThemesModel))
                        current_Renamed = DirectCast(serializer.Deserialize(reader), BootstrapThemesModel)
                        fileStream.Close()
                    End Using
                End If
                Return current_Renamed
            End SyncLock
        End Get
    End Property
    Private _themes As New List(Of ThemeModelBase)()
    <XmlElement("Theme")> _
    Public ReadOnly Property Themes() As List(Of ThemeModelBase)
        Get
            Return _themes
        End Get
    End Property
End Class