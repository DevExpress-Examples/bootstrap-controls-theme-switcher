using System;
using System.Web.Optimization;

public partial class MasterPage : System.Web.UI.MasterPage {

    protected void Page_Init(object sender, EventArgs e) {
        string themeName = SuperBootstrapThemeSwitcher.CurrentTheme.Equals("Default", StringComparison.InvariantCultureIgnoreCase) ? "" 
            : (SuperBootstrapThemeSwitcher.CurrentTheme + "/");
        themeLink.Attributes["href"] = string.Format("~/SwitcherResources/Content/{0}bootstrap.min.css", themeName);
        var v = themeLink.Attributes["href"];
        SuperBootstrapThemeSwitcher.ThemeLinkID = themeLink.ID;
    }

    protected override void Construct() {
        BundleConfig.RegisterBundles(BundleTable.Bundles); //You can register it in Global.asax
        base.Construct();
    }
}
