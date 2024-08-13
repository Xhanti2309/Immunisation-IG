Profile: CovaxBundle
Parent: Bundle
Id: covax-bundle
Title: "Bundle - COVAX"
Description: "This bundle contains all of the Covax resources."
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
* entry ^slicing.description = "An entry resource included in Covax's full document bundle resource."
* entry contains
    Patient 1..1 and
    Encounter 1..1 and
    Guardian 0..* MS and
    Occupation 0..* MS and
    Pregnancy 0..1 MS and
    Lactation 0..1 MS and
    Vaccines 1..* and
    Medication 1..* and
    Condition 0..* MS and
    Allergy 0..* MS and
    VaccineNextDose 0..* MS and
    MedicalHistory 0..1 MS and
    AllergicReaction 0..* MS

* insert BundleEntry(CovaxImmunizationPatient, Patient, reason why this should be supported.)
* insert BundleEntry(COVAXTargetFacilityEncounter, Encounter, reason why this should be supported.)
* insert BundleEntry(COVAXGuardianRelatedPerson, Guardian, reason why this should be supported.)
* insert BundleEntry(PatientOccupationObservation, Occupation, reason why this should be supported.)
* insert BundleEntry(PregnancyStatus, Pregnancy, reason why this should be supported.)
* insert BundleEntry(LactationStatus, Lactation, reason why this should be supported.)
* insert BundleEntry(CovaxImmunization, Vaccines, reason why this should be supported.)
* insert BundleEntry(CovaxVaccine, Medication, reason why this should be supported.)
* insert BundleEntry(UnderlyingCondition, Condition, reason why this should be supported.)
* insert BundleEntry(ImmunizationAllergy, Allergy, reason why this should be supported.)
* insert BundleEntry(VaccineNextDoseDate, VaccineNextDose, reason why this should be supported.)
* insert BundleEntry(MedicalHistory, MedicalHistory, reason why this should be supported.)
* insert BundleEntry(VaccinationAllergicReaction, AllergicReaction, reason why this should be supported.)