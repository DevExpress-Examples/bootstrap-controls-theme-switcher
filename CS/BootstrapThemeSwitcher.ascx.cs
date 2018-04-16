using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BootstrapThemeSwitcher : UserControl {

    public const string DefaultTheme = "default";
    public const string CurrentThemeCookieKey = "DXBSCurrentTheme";

    private string themeLinkID;

    public string ThemeLinkID {
        get { return HiddenLink["themeLinkID"].ToString(); }
        set {
            HiddenLink["themeLinkID"] = value;
        }
    }


    public string CurrentTheme {
        get {
            if(HttpContext.Current.Request.Cookies[CurrentThemeCookieKey] != null)
                return HttpContext.Current.Request.Cookies[CurrentThemeCookieKey].Value;
            return DefaultTheme;
        }
    }

    protected void Page_Init(object sender, EventArgs e) {
        FillThemesMenu();
        
    }

    protected void FillThemesMenu() {
        var currentTheme = CurrentTheme;
        foreach(var theme in BootstrapThemesModel.Current.Themes) {
            var item = themesMenu.Items.Add(theme.Title, theme.Name);
            item.IconCssClass = theme.Name;
            if(theme.Name == currentTheme)
                item.Selected = true;
        }
    }
}