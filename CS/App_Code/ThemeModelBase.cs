using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for ThemeModelBase
/// </summary>
public class ThemeModelBase {
    string _name;
    string _title;

    [XmlAttribute]
    public string Name {
        get {
            if(_name == null)
                return "";
            return _name;
        }
        set { _name = value; }
    }
    [XmlAttribute]
    public string Title {
        get {
            if(_title == null)
                return "";
            return _title;
        }
        set { _title = value; }
    }
}