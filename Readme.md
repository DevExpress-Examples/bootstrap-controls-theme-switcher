<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565915/17.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T547560)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Bootstrap Controls - How to implement Theme Switcher
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t547560/)**
<!-- run online end -->


<p>This example demonstrates the way of creating a Bootstrap Theme Switcher User Control as in <a href="https://demos.devexpress.com/Bootstrap/GridView/">Devexpress Bootstrap demos</a> (all themes are taken from the <a href="https://bootswatch.com/">Bootswatch web site</a>).<br>The selected theme name is stored in cookies.<br><strong>HOW TO APPLY:<br></strong>1. Add all three files in App_Code directory: BootstrapThemeModel.cs, BundleConfig.cs, ThemeModelBase.cs;<br>2. Add User Control BootstrapThemeSwitcher and register and add it on the page. In this example, it's registered and added on the Master Page Site.master; <br>3. Add the SwitcherResources folder. It contains the Content and Scripts folders, the client resources for Theme Switcher User Control and Themes.xml file which contains the list of Bootstrap Themes.<br>After performing all actions above, you will have an attractive Theme Switcher like in our demos.</p>


<h3>Description</h3>

<p>BootstrapThemeSwitcher User Control contains an attribute ThemeLinkID and requires the value of the link's element id which is responsible for representing the current theme.<br>ThemeLinkID&nbsp;is connected with BootstrapThemeSwitcher's ASPxHiddenField and this value is used for changing the theme on the client side.</p>

<br/>


