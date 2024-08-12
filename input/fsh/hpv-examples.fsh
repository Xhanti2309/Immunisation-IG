Instance: HPVImmunizationPatientExample
InstanceOf: HPVImmunizationPatient
Usage: #example
Title: "Patient - HPV Immunization Patient"
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
* link[RelatedPerson][+].other = Reference(HPVGuardianRelatedPersonExample)

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

Instance: HPVGuardianRelatedPersonExample
InstanceOf: HPVGuardianRelatedPerson
Usage: #example
Title: "Related Person - Guardian Relation to Patient Profile (HPV)"
Description: "A guardian to the patient."
* patient = Reference(HPVImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#GUARD

Instance: HPVImmunocomprommisedExample
InstanceOf: HPVImmunocomprommised
Usage: #example
Title: "Observation - HPV Immunocomprommised"
Description: "This is to document whether the HPV patient has been observed to be immunocomprommised."
* status = #final
* category.coding.code = #laboratory
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $ICD11#4A0Z
* code.text = "Primary immunodeficiencies, unspecified"
* subject = Reference(HPVImmunizationPatientExample)
* encounter = Reference(HPVTargetFacilityEncounterExample)
* effectiveDateTime = "2024-01-31"
* valueBoolean = true
* performer = Reference(OrganizationExample)

Instance: HPVTargetFacilityEncounterExample
InstanceOf: HPVTargetFacilityEncounter
Usage: #example
Title: "Encounter - Target Facility Encounter (HPV)" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HPVImmunizationPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"
* serviceProvider = Reference(OrganizationExample)

Instance: HPVImmunizationExample
InstanceOf: HPVImmunization
Usage: #example
Title: "Immunization - HPV Immunization"
Description: "Records the vaccine administered to the patient."
* status = #completed
* occurrenceDateTime = "2024-01-31"
* vaccineCode = $ICD11#J07BM01
* patient = Reference(HPVImmunizationPatientExample)
* encounter = Reference(HPVTargetFacilityEncounterExample)
* performer.actor = Reference(HPVOrganizationPerformingVaccineExample)
* protocolApplied.doseNumber = "DN0000000"
* extension[RegistrationDate].valueDateTime = "2024-01-31"
* administeredProduct.reference = Reference(HPVVaccineExample)

Instance: HPVVaccineExample
InstanceOf: HPVVaccine
Usage: #example
Title: "Medication - HPV Vaccine Details"
Description: "Records the batch number for the vaccine."
* code = $ICD11#J07BM01
* batch.lotNumber = "123"

Instance: HPVOrganizationPerformingVaccineExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Administering Organization in HPV"
Description: "Indicates the organization where the vaccince was administered."
* type.coding.system = "http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-proprietary-hpv-vaccination-site"
* type.coding.code = #Community
* name = "facility name"