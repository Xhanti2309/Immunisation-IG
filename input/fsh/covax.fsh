Profile: CovaxImmunizationPatient
Parent: ImmunizationPatient
Id: covax-immunization-patient
Title: "COVAX Immunization Patient"
Description: "Patient profile for Covax use case"
* identifier 1..* MS

* identifier[cardNumber] 1..1 MS
* identifier[cardNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#CARD (exactly)
* identifier[cardNumber].system = "http://fhir.moh.gov.zm/fhir/IdentifierSystem/vaccination-card-number"
* identifier[cardNumber].value 1..1 MS

* identifier[nrc] 0..1
* identifier[nrc].type = http://terminology.hl7.org/CodeSystem/v2-0203#NRC (exactly)
* identifier[nrc].system = "http://fhir.moh.gov.zm/fhir/IdentifierSystem/nrc"
* identifier[nrc].value 1..1 MS

* identifier[passport] 0..1
* identifier[passport].type = http://terminology.hl7.org/CodeSystem/v2-0203#PPN (exactly)
* identifier[passport].system = "http://fhir.moh.gov.zm/fhir/IdentifierSystem/passport"
* identifier[passport].value 1..1

* name 1..* // Require at least one value inside the `name` element
* name and name.given and name.family MS // Mark elements as MustSupport

* extension[sex].url = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0001.html"
* extension[sex].valueCodeableConcept MS
* extension[sex].valueCodeableConcept.coding MS
* extension[sex].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0001"
* extension[sex].valueCodeableConcept.coding.code MS

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// The contents of `^comment` are also displayed on the "Detailed Descriptions" tab in the built Implementation Guide.
* birthDate MS ^comment = "If exact date of birth is partially or completely unknown, Implementers SHALL populate this element with the date of birth information listed on the patient's government-issued identification."


Extension: PatientSex
Id: patient-sex
Title: "Patient Sex"
Description: "Extension to represent the patient's sex"
* url = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0001.html"
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0001"
* valueCodeableConcept.coding.code MS


Profile: RelatedPersonGuardianCovax
Parent: RelatedPerson
Id: related-person-guardian-covax
Title: "Related Person Guardian Covax"
Description: "Related Person profile for guardians in Covax use case"

* name.family 0..1
* name.given 0..1

* relationship MS
* relationship.coding MS
* relationship.coding.system = "http://snomed.info/sct"
* relationship.coding.code = "394619001" (exactly)