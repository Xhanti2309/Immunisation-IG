Profile: HPVBundle
Parent: Bundle
Id: hpv-bundle
Title: "Bundle - HPV"
Description: "This bundle contains all of the HPV resources."
* type 1..1
* type = #transaction
* timestamp 1..1
* entry 1..*
* entry ^definition =
  "reason(s) why this should be supported."
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "An entry resource included in HPV's full document bundle resource."
* entry contains
    Patient 1..1 and
    Encounter 1..1 and
    Guardian 0..* MS and
    Immunocomprommised 0..1 MS and
    Medication 1..* MS and
    Vaccines 1..* and 
    SiteType 0..* MS

* insert BundleEntry(HPVImmunizationPatient, Patient, reason why this should be supported.)
* insert BundleEntry(TargetFacilityEncounter, Encounter, reason why this should be supported.)
* insert BundleEntry(HPVGuardianRelatedPerson, Guardian, reason why this should be supported.)
* insert BundleEntry(HPVImmunocomprommised, Immunocomprommised, reason why this should be supported.)
* insert BundleEntry(HPVImmunization, Vaccines, reason why this should be supported.)
* insert BundleEntry(HPVVaccine, Medication, reason why this should be supported.)
* insert BundleEntry(ServiceProvider, SiteType, reason why this should be supported.)