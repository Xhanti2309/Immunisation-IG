Profile: SmartcareBundle
Parent: Bundle
Id: smartcare-bundle
Title: "Bundle - Smartcare"
Description: "This bundle contains all of the Smartcare resources."
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
* entry ^slicing.description = "An entry resource included in Smartcare's full document bundle resource."
* entry contains
    Patient 1..1 and
    Encounter 1..1 and
    Spouse 0..1 MS and
    ChiefAtBirth 0..1 MS and
    Guardian 0..* MS and
    Mother 0..1 MS and
    Relative 0..* MS and
    Father 0..1 MS and
    EducationalLevel 0..1 MS and
    DateFirstMarried 0..1 MS and
    GuardianOccupation 0..* MS and
    SpouseOccupation 0..* MS and
    HomeLanguage 0..* MS and
    MedicalInsuranceCompany 0..1 MS and
    MedicalInsurance 0..1 MS and
    Vaccines 1..*

* insert BundleEntry(SmartcareImmunizationPatient, Patient, reason why this should be supported.)
* insert BundleEntry(TargetFacilityEncounter, Encounter, reason why this should be supported.)
* insert BundleEntry(SpouseRelatedPerson, Spouse, reason why this should be supported.)
* insert BundleEntry(ChiefAtBirthRelatedPerson, ChiefAtBirth, reason why this should be supported.)
* insert BundleEntry(SmartcareGuardianRelatedPerson, Guardian, reason why this should be supported.)
* insert BundleEntry(PatientMotherRelatedPerson, Mother, reason why this should be supported.)
* insert BundleEntry(RelativeRelatedPerson, Relative, reason why this should be supported.)
* insert BundleEntry(PatientFatherRelatedPerson, Father, reason why this should be supported.)
* insert BundleEntry(PatientEducationalLevelObservation, EducationalLevel, reason why this should be supported.)
* insert BundleEntry(DatePatientFirstMarriedObservation, DateFirstMarried, reason why this should be supported.)
* insert BundleEntry(GuardianOccupationObservation, GuardianOccupation, reason why this should be supported.)
* insert BundleEntry(SpouseOccupationObservation, SpouseOccupation, reason why this should be supported.)
* insert BundleEntry(PatientHomeLanguageObservation, HomeLanguage, reason why this should be supported.)
* insert BundleEntry(MedicalInsuranceCompany, MedicalInsuranceCompany, reason why this should be supported.)
* insert BundleEntry(MedicalInsurance, MedicalInsurance, reason why this should be supported.)
* insert BundleEntry(Vaccines, Vaccines, reason why this should be supported.)