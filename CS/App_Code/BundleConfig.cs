using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

/// <summary>
/// Summary description for BundleConfig
/// </summary>
public class BundleConfig {
    public static void RegisterBundles(BundleCollection bundles) {
        bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
            "~/SwitcherResources/Scripts/jquery-{version}.js",
            "~/SwitcherResources/Scripts/bootstrap.min.js"
        ));

        bundles.Add(new StyleBundle("~/bundles/styles").Include(
            "~/SwitcherResources/Content/themes.css",
            "~/SwitcherResources/Content/pages.css"
        ));

        BundleTable.EnableOptimizations = true;
    }
}