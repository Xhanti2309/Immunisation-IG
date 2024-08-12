Profile: SmartcareImmunizationPatient
Parent: ImmunizationPatient
Id: smartcare-immunization-patient
Title: "Patient - Smartcare Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier contains
    NUPIN 1..1

* identifier[NUPIN].value 1..1
  * obeys NUPIN-SmartcareID-1
* identifier[NUPIN].system 1..1
* identifier[NUPIN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nupin"

* birthDate.extension contains patient-birthTime named birthTime 0..1 MS
* birthDate.extension[birthTime] ^definition =
    "reason(s) why this should be supported."
* birthDate.extension contains IsEstimatedDateOfBirth named IsEstimatedDOB 0..1 MS
* birthDate.extension[IsEstimatedDOB] ^definition =
    "reason(s) why this should be supported."

* extension contains BornInZambia named bornInZambia 1..1
* extension contains patient-religion named religion 0..1 MS
* extension[religion] ^definition =
    "reason(s) why this should be supported."
* extension[religion].valueCodeableConcept.text 1..1

* link[RelatedPerson].other only Reference(SpouseRelatedPerson or SmartcareGuardianRelatedPerson or PatientMotherRelatedPerson or PatientFatherRelatedPerson or RelativeRelatedPerson or ChiefAtBirthRelatedPerson)

* contact 0..* MS
* contact ^definition =
    "reason(s) why this should be supported."
* contact.name.given 0..1 MS
* contact.name.given ^definition =
    "reason(s) why this should be supported."
* contact.name.family 0..1 MS
* contact.name.family ^definition =
    "reason(s) why this should be supported."

Profile: SmartcareGuardianRelatedPerson
Parent: GuardianRelatedPerson
Id: smartcare-guardian-relation-to-patient
Title: "Related Person - Guardian Relation to Patient Profile (Smartcare)"
Description: "Used to record the patient's guardian details."
* patient only Reference(SmartcareImmunizationPatient)

Profile: SpouseRelatedPerson
Parent: RelationToPatient
Id: spouse-relation-to-patient
Title: "Related Person - Spouse Relation to Patient"
Description: "The husband or wife, considered in relation to the patient."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#SPS
//* relationship from VSSpouseRelationCodes (required)
* name.given 1..1
* name.family 1..1
* patient only Reference(SmartcareImmunizationPatient)

Profile: PatientEducationalLevelObservation
Parent: GenericObservation
Id: patient-educational-level
Title: "Observation - Highest Education Level Attained"
Description: "A patient's highest education level attained"
* code = $LNC#LL5338-0
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* valueCodeableConcept 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept from VSProprietaryEducationLevelAttained (extensible)
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(SmartcareImmunizationPatient)

Profile: SpouseOccupationObservation
Parent: GenericObservation
Id: spouse-occupation
Title: "Observation - Spouse Occupation"
Description: "Records the current occupation for the spouse"
* code = $SCT#447057006
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(SmartcareImmunizationPatient)

Profile: GuardianOccupationObservation
Parent: GenericObservation
Id: guardian-occupation
Title: "Observation - Guardian Occupation"
Description: "Records the current occupation for the guardian"
* code = $LNC#11341-5
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(SmartcareImmunizationPatient)

Profile: DatePatientFirstMarriedObservation
Parent: GenericObservation
Id: date-patient-first-married
Title: "Observation - Patient's Date of First Marriage"
Description: "Records the date when the patient was first married"
* code = $SCT#365581002
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* encounter only Reference(SmartcareTargetFacilityEncounter)
* subject only Reference(SmartcareImmunizationPatient)
* valueDateTime 1..1
* value[x] only dateTime

Profile: PatientMotherRelatedPerson
Parent: RelationToPatient
Id: mother-relation-to-patient
Title: "Related Person - Mother Relation to Patient"
Description: "Used to record the patient's mother's details."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#MTH
* name.given 1..1
* name.family 1..1
* patient only Reference(SmartcareImmunizationPatient)

Profile: PatientFatherRelatedPerson
Parent: RelationToPatient
Id: father-relation-to-patient
Title: "Related Person - Father Relation to Patient"
Description: "Used to record the patient's father's details."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#FTH
* name.given 1..1
* patient only Reference(SmartcareImmunizationPatient)

Profile: RelativeRelatedPerson
Parent: RelationToPatient
Id: relative-relation-to-patient
Title: "Related Person - Relative Relation to Patient"
Description: "Used to record the patient's relatives details."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#FAMMEMB
* patient only Reference(SmartcareImmunizationPatient)

Profile: ChiefAtBirthRelatedPerson
Parent: RelationToPatient
Id: chief-at-birth-relation-to-patient
Title: "Related Person - Chief at Birth"
Description: "Used to record details of the chief at the time of the Patient's birth."
* relationship 1..1
* relationship = $SCT#303119007
* name.family 1..1
* patient only Reference(SmartcareImmunizationPatient)

Profile: PatientHomeLanguageObservation
Parent: GenericObservation
Id: patient-home-language
Title: "Observation - Patient's Home Language"
Description: "Records the home language for the patient"
* code = $SCT#224076006
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSHomeLanguage (extensible)
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(SmartcareImmunizationPatient)

Profile: MedicalInsurance
Parent: Coverage
Id: medical-insurance
Title: "Coverage - Insurance or Medical Plan"
Description: "Insurance or medical plan details"
* status 1..1
* kind 1..1
* kind = #insurance
* beneficiary only Reference(SmartcareImmunizationPatient)
* subscriberId 1..1
* subscriberId.value 1..1
* subscriberId.system 1..1
* subscriberId.system = "http://openhie.org/fhir/zambia-immunizations/identifier/beneficiary-insurance-id"
* policyHolder 1..1
* policyHolder only Reference(MedicalInsuranceCompany)

Profile: MedicalInsuranceCompany
Parent: Organization
Id: medical-insurance-company
Title: "Organization - Medical Insurance Company"
Description: "A company that provides insurance to its subscribers that may include healthcare related policies."
* identifier 0..*
* identifier ^definition =
  "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 0..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/medical-insurance-company"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Medical insurance company identifier"
* type 1..1
* type = $LNC#64290-0
* name 1..1

Profile: SmartcareTargetFacilityEncounter
Parent: TargetFacilityEncounter
Id: smartcare-target-facility-encounter
Title: "Encounter - Target Facility Encounter (Smartcare)" 
Description: "Represents the current facility at which the patient is receiving health services."
* subject only Reference(SmartcareImmunizationPatient)