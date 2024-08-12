Instance: SmartcareImmunizationPatientExample
InstanceOf: SmartcareImmunizationPatient
Usage: #example
Title: "Patient - Smartcare Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[NUPIN][+].value = "1001-XXGB0-12345-5"
* identifier[NUPIN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nupin"
* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "Jane"
* name[=].given[+] = "Maria"

* name[+].use = #nickname
* name[=].text = "Smitty"

* birthDate = "1990-12-12"
* birthDate.extension[birthTime].valueDateTime = "1983-05-22T16:40:17+02:00"
* birthDate.extension[IsEstimatedDOB].valueBoolean = false
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* extension[bornInZambia].valueBoolean = true
* link[RelatedPerson][+].other = Reference(SpouseRelatedPersonExample)
* extension[religion].valueCodeableConcept.coding.code = #1013
* extension[religion].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
* extension[religion].valueCodeableConcept.text = "Christian (non-Catholic, non-specific)"
* managingOrganization = Reference(OrganizationExample)
* extension[sex].valueCodeableConcept = $SEX#F

Instance: SpouseRelatedPersonExample
InstanceOf: SpouseRelatedPerson
Usage: #example
Title: "Related Person - Spouse Relation to Patient"
Description: "The husband or wife, considered in relation to the patient."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].family = "Jones"
* name[=].given[+] = "Mike"
* telecom[+][phone].system = #phone
* telecom[=][phone].value = "+26095705784"
* relationship = $PARENT_RELATIONSHIP_CODES#SPS

Instance: PatientEducationalLevelObservationExample
InstanceOf: PatientEducationalLevelObservation
Usage: #example
Title: "Observation - Highest Education Level Attained"
Description: "A patient's highest education level attained"
* status = #final
* code = $LNC#LL5338-0
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $PROPRIETARY_EDU_LEVEL#DegreeGraduate
* valueCodeableConcept.text = "University undergraduate degree"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: SmartcareTargetFacilityEncounterExample
InstanceOf: SmartcareTargetFacilityEncounter
Usage: #example
Title: "Encounter - Target Facility Encounter (Smartcare)" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(SmartcareImmunizationPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"

Instance: ChiefAtBirthRelatedPersonExample
InstanceOf: ChiefAtBirthRelatedPerson
Usage: #example
Title: "Related Person - Chief at Birth"
Description: "Used to record details of the chief at the time of the Patient's birth."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].family = "Jones"
* relationship = $SCT#303119007

Instance: DatePatientFirstMarriedObservationExample
InstanceOf: DatePatientFirstMarriedObservation
Usage: #example
Title: "Observation - Patient's Date of First Marriage"
Description: "Records the date when the patient was first married"
* status = #final
* code = $SCT#365581002
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueDateTime = "1983-05-22T16:40:17+02:00"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: PatientFatherRelatedPersonExample
InstanceOf: PatientFatherRelatedPerson
Usage: #example
Title: "Related Person - Father Relation to Patient"
Description: "Used to record the patient's father details."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* relationship = $PARENT_RELATIONSHIP_CODES#FTH

Instance: GenericObservationExample
InstanceOf: GenericObservation
Usage: #example
Title: "Generic Social History Observation Profile"
Description: "This profile acts as a base profile from which more specific social history observation profiles can be derived."
* status = #final
* code = $SCT#160476009
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: GuardianOccupationObservationExample
InstanceOf: GuardianOccupationObservation
Usage: #example
Title: "Observation - Guardian Occupation"
Description: "Records the current occupation for the guardian"
* status = #final
* code = $LNC#11341-5
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectivePeriod.start = "2017-03-01"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept.text = "Accounts Manager"

Instance: SmartcareGuardianRelatedPersonExample
InstanceOf: SmartcareGuardianRelatedPerson
Usage: #example
Title: "Related Person - Guardian Relation to Patient Profile (Smartcare)"
Description: "Used to record the patient's guardian details."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#GUARD

Instance: PatientMotherRelatedPersonExample
InstanceOf: PatientMotherRelatedPerson
Usage: #example
Title: "Related Person - Mother Relation to Patient"
Description: "Used to record the patient's mother details."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#MTH

Instance: RelationToPatientExample
InstanceOf: RelationToPatient
Usage: #example
Title: "Generic Relation to Patient"
Description: "This profile acts as a base profile from which more specific RelatedPerson profiles can be derived."
* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/relative-nrc"
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"

Instance: RelativeRelatedPersonExample
InstanceOf: RelativeRelatedPerson
Usage: #example
Title: "Related Person - Relative Relation to Patient"
Description: "Used to record the patient's relatives details."
* patient = Reference(SmartcareImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#FAMMEMB

Instance: SpouseOccupationObservationExample
InstanceOf: SpouseOccupationObservation
Usage: #example
Title: "Observation - Spouse Occupation"
Description: "Records the current occupation for the spouse"
* status = #final
* code = $SCT#447057006
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectivePeriod.start = "2017-03-01"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept.text = ".NET Programmer"

Instance: PatientHomeLanguageObservationExample
InstanceOf: PatientHomeLanguageObservation
Usage: #example
Title: "Observation - Patient's Home Language"
Description: "Records the home language for the patient"
* status = #final
* code = $SCT#224076006
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (SmartcareImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept.coding.code = #Chokwe
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-home-language"
* valueCodeableConcept.text = "Chokwe"

Instance: MedicalInsuranceCompanyExample
InstanceOf: MedicalInsuranceCompany
Usage: #example
Title: "Organization - Medical Insurance Company"
Description: "A company that provides insurance to its subscribers that may include healthcare related policies."
* identifier[XX].value = "medical-insurance-company-1"
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/medical-insurance-company"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Medical insurance company identifier"
* type = $LNC#64290-0
* name = "Medical Insurance Company 1"

Instance: MedicalInsuranceExample
InstanceOf: MedicalInsurance
Usage: #example
Title: "Coverage - Insurance or Medical Plan"
Description: "Insurance or medical plan details"
* status = #active
* kind = #insurance
* beneficiary = Reference(SmartcareImmunizationPatientExample)
* subscriberId.value = "504342245"
* subscriberId.system = "http://openhie.org/fhir/zambia-immunizations/identifier/beneficiary-insurance-id"
* policyHolder = Reference(MedicalInsuranceCompanyExample)

Instance: VaccinesExample
InstanceOf: Vaccines
Usage: #example
Title: "Immunization - Vaccine Administration"
Description: "Records the vaccine administered to the patient."
* status = #completed
* vaccineCode = $SCT#82622003
* patient = Reference(SmartcareImmunizationPatientExample)
* occurrenceDateTime = "2022-11-30"
* encounter = Reference(SmartcareTargetFacilityEncounterExample)
* protocolApplied.doseNumber = "0"
* performer.actor = Reference(SmartcareOrganizationPerformingVaccineExample)

Instance: SmartcareOrganizationPerformingVaccineExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Vaccination site type"
Description: "Indicates whether the vaccination was administered at the facility or at an outreach post."
* type.coding.system = "http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-proprietary-smartcare-vaccination-site"
* type.coding.code = #Outreach
* name = "facility name"