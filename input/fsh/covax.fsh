Profile: CovaxImmunizationPatient
Parent: ImmunizationPatient
Id: covax-immunization-patient
Title: "COVAX Immunization Patient"
Description: "Patient profile for Covax use case"
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
  * obeys Passport-1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

* name.given 1..*
* name.family 1..1

* managingOrganization 1..1

* link[RelatedPerson].other only Reference(COVAXGuardianRelatedPerson)

Profile: COVAXGuardianRelatedPerson
Parent: GuardianRelatedPerson
Id: covax-guardian-relation-to-patient
Title: "Guardian Relation to Patient Profile (COVAX)"
Description: "A guardian to the patient."
* patient only Reference(CovaxImmunizationPatient)

Profile: PatientOccupationObservation
Parent: GenericObservation
Id: patient-occupation
Title: "Patient Occupation"
Description: "Records the current occupation for the patient"
* code = $LNC#85658-3
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(CovaxImmunizationPatient)

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
* subject only Reference(CovaxImmunizationPatient)

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
* subject only Reference(CovaxImmunizationPatient)

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
* patient only Reference(CovaxImmunizationPatient)

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
* encounter only Reference(COVAXTargetFacilityEncounter)
* recordedDate 1..1

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
* encounter only Reference(COVAXTargetFacilityEncounter)
* date 1..1
* source 1..1
* source only Reference(ServiceProvider)
* entry 1..*

* entry.flag 1..1
* entry.flag.coding 1..1
* entry.flag.coding = $LNC#LP74664-1
* entry.item only Reference(UnderlyingCondition)

Profile: COVAXTargetFacilityEncounter
Parent: TargetFacilityEncounter
Id: covax-target-facility-encounter
Title: "Target Facility Encounter (COVAX)" 
Description: "Represents the current facility at which the patient is receiving health services."
* subject only Reference(CovaxImmunizationPatient)

Profile: VaccinationAllergicReaction
Parent: AllergyIntolerance
Id: vaccination-allergic-reaction
Title: "Allergy Intolerance - Vaccination Allergic Reaction"
Description: "Used to capture the patient's allergic reaction after previous vaccine dose."
* type 0..1 MS
* type = $AllergyType#allergy
* type ^definition =
  "reason(s) why this should be supported."
* category 0..1 MS
* category = $AllergyCategory#medication
* category ^definition =
  "reason(s) why this should be supported."
* code 1..1
* code = $LNC#31044-1
* patient only Reference(CovaxImmunizationPatient)
* encounter 1..1
* encounter only Reference(COVAXTargetFacilityEncounter)
* onsetDateTime 0..1 MS
* onsetDateTime ^definition =
  "reason(s) why this should be supported."
* recordedDate 0..1 MS
* recordedDate ^definition =
  "reason(s) why this should be supported."