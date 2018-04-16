using System;
using System.Collections.Generic;
using System.IO;
using System.Xml;
using System.Xml.Serialization;

/// <summary>
/// Summary description for ThemeModel
/// </summary>
[XmlRoot("Themes")]
public class BootstrapThemesModel {
    const string ResourcePath= "SwitcherResources\\Themes.xml";
    static BootstrapThemesModel current;
    static readonly object currentLock = new object();
    public static BootstrapThemesModel Current {
        get {
            lock(currentLock) {
                if(current == null) {
                    using(FileStream fileStream = new FileStream(AppDomain.CurrentDomain.BaseDirectory + "\\" + ResourcePath, FileMode.Open)) {
                        XmlReader reader = XmlReader.Create(fileStream);
                        XmlSerializer serializer = new XmlSerializer(typeof(BootstrapThemesModel));
                        current = (BootstrapThemesModel)serializer.Deserialize(reader);
                        fileStream.Close();
                    }
                }
                return current;
            }
        }
    }
    List<ThemeModelBase> _themes = new List<ThemeModelBase>();
    [XmlElement("Theme")]
    public List<ThemeModelBase> Themes {
        get { return _themes; }
    }
}