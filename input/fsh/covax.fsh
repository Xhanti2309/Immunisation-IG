Profile: CovaxImmunizationPatient
Parent: ImmunizationPatient
Id: covax-immunization-patient
Title: "COVAX Immunization Patient"
Description: "Patient profile for Covax use case"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    cardNumber 0..1 MS and 
    passport 0..1 MS
    
* identifier[cardNumber].system = "http://fhir.moh.gov.zm/fhir/IdentifierSystem/vaccination-card-number"
* identifier[cardNumber].value 1..1

* identifier[passport].type = http://terminology.hl7.org/CodeSystem/v2-0203#PPN (exactly)
* identifier[passport].system = "http://fhir.moh.gov.zm/fhir/IdentifierSystem/passport"
* identifier[passport].value 1..1

* name 1..* // Require at least one value inside the `name` element
* name and name.given and name.family

* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

* birthDate MS "If exact date of birth is partially or completely unknown, Implementers SHALL populate this element with the date of birth information listed on the patient's government-issued identification."

* managingOrganization 1..1
* managingOrganization only Reference(ServiceProvider)



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


Profile: UnderlyingCondition
Parent: Condition
Id: underlying-condition
Title: "Underlying Condition"
Description: "Condition profile for capturing specific underlying conditions"
* code 1..1 MS
* code from UnderlyingConditions (required)
* clinicalStatus 1..1
* category 0..*
* severity 0..1
* subject 1..1 MS 
* subject only Reference(CovaxImmunizationPatient)
* evidence 0..*
* note 0..*

Profile: CovaxObservation
Parent: Observation
Id: covax-observation
Title: "COVAX Observation"
Description: "Profile for capturing observations during vaccination"
* code 1..1 MS
* code from CovaxObservations (required)
* subject 1..1 MS
* subject only Reference(CovaxImmunizationPatient)
* status 1..1

Profile: UnderlyingCondition
Parent: Condition
Id: underlying-condition
Title: "Underlying Condition"
Description: "Condition profile for capturing specific underlying conditions"
* code 1..1 MS
* code from UnderlyingConditions (required)
* clinicalStatus 1..1
* category 0..*
* severity 0..1
* subject 1..1 MS 
* subject only Reference(CovaxImmunizationPatient)
* evidence 0..*
* note 0..*
