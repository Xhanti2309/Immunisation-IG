Profile: HPVImmunizationPatient
Parent: ImmunizationPatient
Id: hpv-immunization-patient
Title: "Patient Profile for HPV Immunizations"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    CN 1..1 and
    PN 0..1 MS
* identifier[CN].value 1..1
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-card-number"

* identifier[PN] ^definition =
    "reason(s) why this should be supported."
* identifier[PN].value 1..1
  * obeys Passport-HPV-1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

* name.family 1..1
* name.given 1..*

* link.other only Reference(GuardianRelatedPerson)

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice based on the type of telecom system."
* telecom contains 
    email 0..* MS and
    phone 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."
* telecom[email].value 1..1
* telecom[email].system = #email
* telecom[email] ^definition =
    "reason(s) why this should be supported."

* telecom[phone].value 1..1
* telecom[phone].system  = #phone
* telecom[phone] ^definition =
    "reason(s) why this should be supported."

* address 0..* MS
* address ^definition =
    "reason(s) why this should be supported."
* address.city 0..1 MS
* address.city ^definition =
    "reason(s) why this should be supported."
* address.line 0..* MS
* address.line ^definition =
    "reason(s) why this should be supported."
* address.state 0..1 MS
* address.state ^definition =
    "reason(s) why this should be supported."
* address.country 0..1 MS
* address.country ^definition =
    "reason(s) why this should be supported."

Profile: HPVImmunocomprommised
Parent: GenericObservation
Id: hpv-immunocomprommised
Title: "HPV Immunocomprommised"
Description: "This is to document whether the patient is immunocompromised."
* status = #final
* category.coding.code = #laboratory
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $ICD11#4A0Z
* code.text = "Primary immunodeficiencies, unspecified"
* effectiveDateTime 1..1
* valueBoolean 1..1

Profile: HPVImmunization
Parent: Vaccines
Id: hpv-immunization
Title: "HPV Immunization"
Description: "Records the vaccine administered to the patient."
* extension contains HPVPatientVaccinationRegistrationDate named RegistrationDate 0..1 MS
* extension[RegistrationDate] ^definition =
    "reason(s) why this should be supported."
* administeredProduct 0..1 MS
* administeredProduct only CodeableReference(HPVVaccine)
* administeredProduct ^definition =
    "reason(s) why this should be supported."

Profile: HPVVaccinationSiteType
Parent: Organization
Id: hpv-vaccination-site-type
Title: "Vaccination site type in HPV"
Description: "Indicates whether the vaccination was administered at the facility or at an outreach post."
* name 1..1
* type 1..1
* type from VSProprietaryHPVVaccinationSite (required)

Profile: HPVVaccine
Parent: Medication
Id: hpv-vaccine-details
Title: "HPV Vaccine Details"
Description: "Records the batch number for the vaccine."
* code 1..1
* code from VSProprietaryHPVVaccinationSite (extensible)
* batch 1..1
* batch.lotNumber 1..1