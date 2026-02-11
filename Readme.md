<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565915/17.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T547560)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
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


<p>This example demonstrates the way of creating a Bootstrap Theme Switcher User Control as in <a href="https://demos.devexpress.com/Bootstrap/GridView/">Devexpress Bootstrap demos</a> (all themes are taken from the <a href="https://bootswatch.com/">Bootswatch web site</a>).<br>The selected theme name is stored in cookies.<br><strong>HOW TO APPLY:<br></strong>1. Add all three files in App_Code directory: BootstrapThemeModel.cs, BundleConfig.cs, ThemeModelBase.cs;<br>2. Add User Control BootstrapThemeSwitcher and register and add it on the page. In this example, it's registered and added on the Master Page Site.master; <br>3. Add the SwitcherResources folder. It contains the Content and Scripts folders, the client resources for Theme Switcher User Control and Themes.xml file which contains the list of Bootstrap Themes.<br>After performing all actions above, you will have an attractive Theme Switcher like in our demos.</p>


<h3>Description</h3>

<p>BootstrapThemeSwitcher User Control contains an attribute ThemeLinkID and requires the value of the link's element id which is responsible for representing the current theme.<br>ThemeLinkID&nbsp;is connected with BootstrapThemeSwitcher's ASPxHiddenField and this value is used for changing the theme on the client side.</p>

<br/>


<!-- feedback -->
## Does This Example Address Your Development Requirements/Objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=bootstrap-controls-theme-switcher&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=bootstrap-controls-theme-switcher&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
