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
    CN 0..1 MS and
    PN 0..1 MS

* identifier[CN] ^definition =
    "reason(s) why this should be supported."
* identifier[CN].value 1..1
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-card-number"

* identifier[PN] ^definition =
    "reason(s) why this should be supported."
* identifier[PN].value 1..1
  * obeys Passport-HPV-1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

* name 1..*
* name.given 1..*
* name.family 1..1

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

* managingOrganization 1..1

Profile: RelatedPersonGuardianCovax
Parent: GuardianRelatedPerson
Id: related-person-guardian-covax
Title: "Related Person Guardian Covax"
Description: "A guardian to the patient."

* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PN 0..1 MS

* identifier[PN] ^definition =
    "reason(s) why this should be supported."
* identifier[PN].value 1..1
  * obeys Passport-HPV-1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

Profile: PatientOccupationObservation
Parent: GenericObservation
Id: patient-occupation
Title: "Patient Occupation"
Description: "Records the current occupation for the patient"
* code = $LNC#85658-3
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* value[x] only string
* valueString 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"

Profile: PregnancyStatus
Parent: GenericObservation
Id: pregnancy-status
Title: "Pregnancy Status"
Description: "Represents whether the patient is currently pregnant."
* category 1..1
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#11449-6
* value[x] only boolean
* valueBoolean 1..1

Profile: LactationStatus
Parent: GenericObservation
Id: lactation-status
Title: "Lactation Status"
Description: "Represents whether the patient is currently lactating."
* category 1..1
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $SCT#290122005
* value[x] only boolean
* valueBoolean 1..1

Profile: CovaxImmunization
Parent: Vaccines
Id: covax-immunization
Title: "Covax Immunization"
Description: "Records the vaccine administered to the patient."
* protocolApplied.doseNumber 1..1
  * obeys DoseNumber-PositiveInt-1
* administeredProduct 0..1 MS
* administeredProduct only CodeableReference(CovaxVaccine)
* administeredProduct ^definition =
    "reason(s) why this should be supported."
* reaction.manifestation 0..1
* reaction.manifestation only CodeableReference(VaccinationAllergicReaction)

Profile: CovaxVaccine
Parent: Medication
Id: covax-vaccine-details
Title: "Covax Vaccine Details"
Description: "Records the batch number for the vaccine."
* code 1..1
* code from VSVaccines (extensible)
* batch 1..1
* batch.lotNumber 1..1

Profile: UnderlyingCondition
Parent: Condition
Id: underlying-condition
Title: "Underlying Condition"
Description: "Represents underlying conditions for the patient."
* clinicalStatus 1..1
* code 1..1
* code from VSUnderlyingCondition (required)
* code.text 0..1 MS
* code.text ^definition =
    "reason(s) why this should be supported."
* category 1..1
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject 1..1
* subject only Reference(CovaxImmunizationPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* recordedDate 1..1

Profile: VaccinationAllergicReaction
Parent: GenericObservation
Id: vaccination-allergic-reaction
Title: "Vaccination Allergic Reaction"
Description: "Used to capture the patient's allergic reaction after previous vaccine dose."
* category 1..1
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#46249-9
* value[x] only string
* valueString 1..1

Profile: VaccineNextDoseDate
Parent: ImmunizationRecommendation
Id: vaccine-next-dose-date
Title: "Vaccine Next Dose Date"
Description: "Used to represent the patient suggested next dose date."
* patient 1..1
* patient only Reference(CovaxImmunizationPatient)
* date 1..1
* authority 0..1 MS
* authority only Reference(ServiceProvider)
* authority ^definition =
  "reason(s) why this should be supported."
* recommendation 1..1
* recommendation.forecastStatus 1..1
* recommendation.forecastStatus.coding.code = #due
* recommendation.forecastStatus.coding.system = "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status"
* recommendation.vaccineCode 1..1
* recommendation.vaccineCode from VSVaccines (extensible)
* recommendation.dateCriterion 1..1
* recommendation.dateCriterion.code 1..1
* recommendation.dateCriterion.code = $LNC#30980-7
* recommendation.dateCriterion.value 1..1
* recommendation.supportingImmunization 1..1
* recommendation.supportingImmunization only Reference(CovaxImmunization)

Profile: MedicalHistory
Parent: List
Id: medical-history
Title: "Medical History"
Description: "Documents the medical history for the patient"
* status = #current
* title 1..1
* title = "Medical History"
* code 1..1
* code = $LNC#LP73189-0
* subject 1..1
* subject only Reference(CovaxImmunizationPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* date 1..1
* source 1..1
* source only Reference(ServiceProvider)
* entry 1..*

* entry.flag 1..1
* entry.flag.coding 1..1
* entry.flag.coding = $LNC#LP74664-1
* entry.item only Reference(UnderlyingCondition)