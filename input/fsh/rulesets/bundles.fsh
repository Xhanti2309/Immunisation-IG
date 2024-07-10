RuleSet: BundleEntry(resourceID, entrySLice, mustSupportReason)
* entry[{entrySLice}]
  ^definition = "{mustSupportReason}"
  * fullUrl 1..1
  * resource 1..1
  * resource only {resourceID}
  * request 1..1
    * method = #PUT