Instance: ImmunizationPatientExample
InstanceOf: ImmunizationPatient
Usage: #example
Title: "Patient - Generic Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "Jane"
* name[=].given[+] = "Maria"

* name[+].use = #nickname
* name[=].text = "Smitty"

* birthDate = "1990-12-12"

* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"

* link[RelatedPerson][+].other = Reference(SpouseRelatedPersonExample)

* managingOrganization = Reference(OrganizationExample)
* extension[sex].valueCodeableConcept = $SEX#F

Instance: OrganizationExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Healthcare Service Provider"
Description: "An organization that provides healthcare services."
* identifier[XX].value = "facility-1"
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/healthcare-service-provider"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Healthcare service provider identifier"
* name = "Facility one"