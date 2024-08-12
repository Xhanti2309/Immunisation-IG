Profile: HPVImmunizationPatient
Parent: ImmunizationPatient
Id: hpv-immunization-patient
Title: "Patient - HPV Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier contains
    CN 1..1 and
    PN 0..1 MS
* identifier[CN].value 1..1
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-card-number"

* identifier[PN] ^definition =
    "reason(s) why this should be supported."
* identifier[PN].value 1..1
  * obeys Passport-1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

* name.family 1..1
* name.given 1..*

* link[RelatedPerson].other only Reference(HPVGuardianRelatedPerson)

Profile: HPVGuardianRelatedPerson
Parent: GuardianRelatedPerson
Id: hpv-guardian-relation-to-patient
Title: "Related Person - Guardian Relation to Patient Profile (HPV)"
Description: "A guardian to the patient."
* patient only Reference(HPVImmunizationPatient)

Profile: HPVImmunocomprommised
Parent: GenericObservation
Id: hpv-immunocomprommised
Title: "Observation - HPV Immunocomprommised"
Description: "This is to document whether the patient is immunocompromised."
* status = #final
* category.coding.code = #laboratory
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $ICD11#4A0Z
* code.text = "Primary immunodeficiencies, unspecified"
* effectiveDateTime 1..1
* valueBoolean 1..1
* subject only Reference(HPVImmunizationPatient)

Profile: HPVImmunization
Parent: Vaccines
Id: hpv-immunization
Title: "Immunization - HPV Immunization"
Description: "Records the vaccine administered to the patient."
* extension contains HPVPatientVaccinationRegistrationDate named RegistrationDate 0..1 MS
* extension[RegistrationDate] ^definition =
    "reason(s) why this should be supported."
* administeredProduct 0..1 MS
* administeredProduct only CodeableReference(HPVVaccine)
* administeredProduct ^definition =
    "reason(s) why this should be supported."
* patient only Reference(HPVImmunizationPatient)

Profile: HPVVaccine
Parent: Medication
Id: hpv-vaccine-details
Title: "Medication - HPV Vaccine Details"
Description: "Records the batch number for the vaccine."
* code 1..1
* code from VSVaccines (extensible)
* batch 1..1
* batch.lotNumber 1..1

Profile: HPVTargetFacilityEncounter
Parent: TargetFacilityEncounter
Id: hpv-target-facility-encounter
Title: "Encounter - Target Facility Encounter (HPV)" 
Description: "Represents the current facility at which the patient is receiving health services."
* subject only Reference(HPVImmunizationPatient)