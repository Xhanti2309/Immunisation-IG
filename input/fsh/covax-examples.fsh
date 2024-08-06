Instance: CovaxImmunizationPatientExample
InstanceOf: CovaxImmunizationPatient
Usage: #example
Title: "Immunization Patient in Covax"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[CN][+].value = "CN0000000"
* identifier[CN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-card-number"

* identifier[PN][+].value = "PN15685241"
* identifier[PN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-passport"

* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name[+].use = #official
* name[=].family = "Jones"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Jack"

* birthDate = "2000-01-01"
* link[RelatedPerson][+].other = Reference(RelatedPersonGuardianCovaxExample)

* telecom[email][+].value = "mail@mail.com"
* telecom[email][=].system = #email
* telecom[phone][+].value = "+27821234567"
* telecom[phone][=].system  = #phone

* address[+].city = "Ndola"
* address[=].line[+] = "100"
* address[=].line[+] = "Zimi Road"
* address[=].line[+] = "Ndola City"
* address[=].district = "Ndola District"
* address[=].state = "Copperbelt Province"
* address[=].country = "Zambia"

* managingOrganization = Reference(OrganizationExample)
* extension[sex].valueCodeableConcept = $SEX#F

Instance: RelatedPersonGuardianCovaxExample
InstanceOf: COVAXGuardianRelatedPerson
Usage: #example
Title: "Guardian Relation to Patient Profile (COVAX)"
Description: "A guardian to the patient."
* identifier[PN][+].value = "PN15685241"
* identifier[PN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/passport-number"
* patient = Reference(CovaxImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#GUARD

Instance: CovaxTargetFacilityEncounterExample
InstanceOf: COVAXTargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter in Covax" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(CovaxImmunizationPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"
* serviceProvider = Reference(OrganizationExample)

Instance: PatientOccupationObservationExample
InstanceOf: PatientOccupationObservation
Usage: #example
Title: "Patient Occupation"
Description: "Records the current occupation for the patient"
* status = #final
* code = $LNC#85658-3
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* effectivePeriod.start = "2017-03-01"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (CovaxImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept.text = "Accounts Manager"

Instance: PregnancyStatusExample
InstanceOf: PregnancyStatus
Usage: #example
Title: "Pregnancy Status"
Description: "Represents whether the patient is currently pregnant."
* status = #final
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#11449-6
* code.text = "Pregnancy status"
* valueBoolean = true
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* performer = Reference(OrganizationExample)
* effectiveDateTime = "2024-01-25"

Instance: LactationStatusExample
InstanceOf: LactationStatus
Usage: #example
Title: "Lactation Status"
Description: "Represents whether the patient is currently lactating."
* status = #final
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $SCT#290122005
* code.text = "Lactation status"
* valueBoolean = true
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* performer = Reference(OrganizationExample)
* effectiveDateTime = "2024-01-25"

Instance: CovaxImmunizationExample
InstanceOf: CovaxImmunization
Usage: #example
Title: "Covax Immunization Example"
Description: "Records the vaccine administered to the patient."
* status = #completed
* occurrenceDateTime = "2024-01-31"
* vaccineCode = $ICD11#XM1G90
* patient = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* performer.actor = Reference(OrganizationExample)
* protocolApplied.doseNumber = "2654564"
* administeredProduct.reference = Reference(CovaxVaccineExample)
* reaction.manifestation.reference = Reference(VaccinationAllergicReactionExample)

Instance: CovaxVaccineExample
InstanceOf: CovaxVaccine
Usage: #example
Title: "Covax Vaccine Details"
Description: "Records the batch number for the vaccine."
* code = $ICD11#XM1G90
* batch.lotNumber = "123"

Instance: VaccinationAllergicReactionExample
InstanceOf: VaccinationAllergicReaction
Usage: #example
Title: "Vaccination Allergic Reaction"
Description: "Used to capture the patient's allergic reaction after previous vaccine dose."
* status = #final
* category.coding.code = #exam
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#46249-9
* code.text = "Allergic Reaction"
* valueCodeableConcept.text = "Vomiting"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* performer = Reference(OrganizationExample)
* effectiveDateTime = "2024-01-25"

Instance: VaccineNextDoseDateExample
InstanceOf: VaccineNextDoseDate
Usage: #example
Title: "Vaccine Next Dose Date"
Description: "Used to represent the patient suggested next dose date."
* patient = Reference(CovaxImmunizationPatientExample)
* date = "2024-01-25"
* authority = Reference(OrganizationExample)
* recommendation.forecastStatus.coding.code = #due
* recommendation.forecastStatus.coding.system = "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status"
* recommendation.vaccineCode = $ICD11#XM1G90
* recommendation.dateCriterion.code = $LNC#30980-7
* recommendation.dateCriterion.value = "2024-01-25"
* recommendation.supportingImmunization = Reference(CovaxImmunizationExample)

Instance: HIVConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "HIV Condition"
Description: "Records whether the patient has HIV condition."
* code = $LNC#LA28577-7
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: DiabetesMellitusConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Diabetes Mellitus Condition"
Description: "Records whether the patient has diabetes mellitus condition."
* code = $LNC#LA25673-7
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: ChronicLungDiseaseConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Chronic Lung Disease Condition"
Description: "Records whether the patient has chronic lung disease condition."
* code = $LNC#LA22199-6
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: HeartDiseaseConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Heart Disease Condition"
Description: "Records whether the patient has heart disease condition."
* code = $LNC#LA25639-8
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: HypertensionConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Hypertension Condition"
Description: "Records whether the patient has hypertension condition."
* code = $LNC#LA25642-2
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: SkinConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Skin Condition"
Description: "Records whether the patient has skin condition."
* code = $LNC#LA22098-0
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: MusculoskeletalConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Musculoskeletal Condition"
Description: "Records whether the patient has musculoskeletal condition."
* code = $LNC#LA25692-7
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: VascularConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Vascular Condition"
Description: "Records whether the patient has vascular condition."
* code = $SCT#27550009
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: CancerConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Cancer Condition"
Description: "Records whether the patient has cancer condition."
* code = $LNC#54532-7
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: GastrointestinalConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Gastrointestinal Condition"
Description: "Records whether the patient has gastrointestinal condition."
* code = $LNC#54534-3
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: NeuromuscularConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Neuromuscular Condition"
Description: "Records whether the patient has neuromuscular condition."
* code = $LNC#LP31403-6
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: ImmunologyConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Immunology Condition"
Description: "Records whether the patient has immunology condition."
* code = $LNC#LP345046-9
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: EndocrineConditionExample
InstanceOf: UnderlyingCondition
Usage: #example
Title: "Endocrine Condition"
Description: "Records whether the patient has endocrine condition."
* code = $LNC#LP56737-7
* category.coding.code = #problem-list-item
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* recordedDate = "2024-03-20"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: MedicalHistoryExample
InstanceOf: MedicalHistory
Usage: #example
Title: "Medical History"
Description: "Documents the medical history for the patient"
* code = $LNC#LP73189-0
* mode = #working
* subject = Reference(CovaxImmunizationPatientExample)
* encounter = Reference(CovaxTargetFacilityEncounterExample)
* date = "2024-03-20"
* source = Reference(OrganizationExample)

* entry[+].item = Reference(HIVConditionExample)
* entry[+].item = Reference(DiabetesMellitusConditionExample)
* entry[+].item = Reference(HypertensionConditionExample)
* entry[+].item = Reference(ImmunologyConditionExample)
* entry[+].item = Reference(SkinConditionExample)
* entry[+].item = Reference(NeuromuscularConditionExample)