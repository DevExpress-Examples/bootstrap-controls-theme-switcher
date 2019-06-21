<!-- default file list -->
*Files to look at*:

* [BootstrapThemeModel.cs](./CS/App_Code/BootstrapThemeModel.cs) (VB: [BootstrapThemeModel.vb](./VB/App_Code/BootstrapThemeModel.vb))
* [BundleConfig.cs](./CS/App_Code/BundleConfig.cs) (VB: [BundleConfig.vb](./VB/App_Code/BundleConfig.vb))
* [ThemeModelBase.cs](./CS/App_Code/ThemeModelBase.cs) (VB: [ThemeModelBase.vb](./VB/App_Code/ThemeModelBase.vb))
* **[BootstrapThemeSwitcher.ascx](./CS/BootstrapThemeSwitcher.ascx) (VB: [BootstrapThemeSwitcher.ascx](./VB/BootstrapThemeSwitcher.ascx))**
* [BootstrapThemeSwitcher.ascx.cs](./CS/BootstrapThemeSwitcher.ascx.cs) (VB: [BootstrapThemeSwitcher.ascx.vb](./VB/BootstrapThemeSwitcher.ascx.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Site.master.cs](./CS/Site.master.cs) (VB: [Site.master.vb](./VB/Site.master.vb))
<!-- default file list end -->
# Bootstrap Controls - How to implement Theme Switcher
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t547560/)**
<!-- run online end -->


<p>This example demonstrates the way of creating a Bootstrap Theme Switcher User Control as in <a href="https://demos.devexpress.com/Bootstrap/GridView/">Devexpress Bootstrap demos</a> (all themes are taken from the <a href="https://bootswatch.com/">Bootswatch web site</a>).<br>The selected theme name is stored in cookies.<br><strong>HOW TO APPLY:<br></strong>1. Add all three files in App_Code directory: BootstrapThemeModel.cs, BundleConfig.cs, ThemeModelBase.cs;<br>2. Add User Control BootstrapThemeSwitcher and register and add it on the page. In this example, it's registered and added on the Master Page Site.master; <br>3. Add the SwitcherResources folder. It contains the Content and Scripts folders, the client resources for Theme Switcher User Control and Themes.xml file which contains the list of Bootstrap Themes.<br>After performing all actions above, you will have an attractive Theme Switcher like in our demos.</p>


<h3>Description</h3>

<p>BootstrapThemeSwitcher User Control contains an attribute ThemeLinkID and requires the value of the link's element id which is responsible for representing the current theme.<br>ThemeLinkID&nbsp;is connected with BootstrapThemeSwitcher's ASPxHiddenField and this value is used for changing the theme on the client side.</p>

<br/>


