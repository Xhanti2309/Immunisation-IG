Instance: HPVFullBundleExample
InstanceOf: HPVBundle
Usage: #example
Title: "Bundle - HPV"
Description: "A bundle containing all HPV FHIR resources."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* entry[Patient][+].fullUrl = "http://hapi-fhir:8080/Patient/HPVImmunizationPatientExample"
* entry[Patient][=].resource = HPVImmunizationPatientExample
* entry[Patient][=].request.method = #PUT
* entry[Patient][=].request.url = "Patient/HPVImmunizationPatientExample"

* entry[Encounter][+].fullUrl = "http://hapi-fhir:8080/Encounter/HPVTargetFacilityEncounterExample"
* entry[Encounter][=].resource = HPVTargetFacilityEncounterExample
* entry[Encounter][=].request.method = #PUT
* entry[Encounter][=].request.url = "Encounter/HPVTargetFacilityEncounterExample"

* entry[Guardian][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/HPVGuardianRelatedPersonExample"
* entry[Guardian][=].resource = HPVGuardianRelatedPersonExample
* entry[Guardian][=].request.method = #PUT
* entry[Guardian][=].request.url = "RelatedPerson/HPVGuardianRelatedPersonExample"

* entry[Immunocomprommised][+].fullUrl = "http://hapi-fhir:8080/Observation/HPVImmunocomprommisedExample"
* entry[Immunocomprommised][=].resource = HPVImmunocomprommisedExample
* entry[Immunocomprommised][=].request.method = #PUT
* entry[Immunocomprommised][=].request.url = "Observation/HPVImmunocomprommisedExample"

* entry[Vaccines][+].fullUrl = "http://hapi-fhir:8080/Immunization/HPVImmunizationExample"
* entry[Vaccines][=].resource = HPVImmunizationExample
* entry[Vaccines][=].request.method = #PUT
* entry[Vaccines][=].request.url = "Immunization/HPVImmunizationExample"

* entry[Medication][+].fullUrl = "http://hapi-fhir:8080/Medication/HPVVaccineExample"
* entry[Medication][=].resource = HPVVaccineExample
* entry[Medication][=].request.method = #PUT
* entry[Medication][=].request.url = "Medication/HPVVaccineExample"

* entry[SiteType][+].fullUrl = "http://hapi-fhir:8080/Organization/HPVOrganizationPerformingVaccineExample"
* entry[SiteType][=].resource = HPVOrganizationPerformingVaccineExample
* entry[SiteType][=].request.method = #PUT
* entry[SiteType][=].request.url = "Organization/HPVOrganizationPerformingVaccineExample"