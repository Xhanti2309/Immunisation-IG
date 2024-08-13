Instance: Smartcare
InstanceOf: SmartcareBundle
Usage: #example
Title: "Bundle - Smartcare"
Description: "A bundle containing all Smartcare FHIR resources."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* entry[Patient][+].fullUrl = "http://hapi-fhir:8080/Patient/SmartcareImmunizationPatientExample"
* entry[Patient][=].resource = SmartcareImmunizationPatientExample
* entry[Patient][=].request.method = #PUT
* entry[Patient][=].request.url = "Patient/SmartcareImmunizationPatientExample"

* entry[Encounter][+].fullUrl = "http://hapi-fhir:8080/Encounter/SmartcareTargetFacilityEncounterExample"
* entry[Encounter][=].resource = SmartcareTargetFacilityEncounterExample
* entry[Encounter][=].request.method = #PUT
* entry[Encounter][=].request.url = "Encounter/SmartcareTargetFacilityEncounterExample"

* entry[Spouse][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/SpouseRelatedPersonExample"
* entry[Spouse][=].resource = SpouseRelatedPersonExample
* entry[Spouse][=].request.method = #PUT
* entry[Spouse][=].request.url = "RelatedPerson/SpouseRelatedPersonExample"

* entry[ChiefAtBirth][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/ChiefAtBirthRelatedPersonExample"
* entry[ChiefAtBirth][=].resource = ChiefAtBirthRelatedPersonExample
* entry[ChiefAtBirth][=].request.method = #PUT
* entry[ChiefAtBirth][=].request.url = "RelatedPerson/ChiefAtBirthRelatedPersonExample"

* entry[Guardian][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/SmartcareGuardianRelatedPersonExample"
* entry[Guardian][=].resource = SmartcareGuardianRelatedPersonExample
* entry[Guardian][=].request.method = #PUT
* entry[Guardian][=].request.url = "RelatedPerson/SmartcareGuardianRelatedPersonExample"

* entry[Mother][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/PatientMotherRelatedPersonExample"
* entry[Mother][=].resource = PatientMotherRelatedPersonExample
* entry[Mother][=].request.method = #PUT
* entry[Mother][=].request.url = "RelatedPerson/PatientMotherRelatedPersonExample"

* entry[Relative][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/RelativeRelatedPersonExample"
* entry[Relative][=].resource = RelativeRelatedPersonExample
* entry[Relative][=].request.method = #PUT
* entry[Relative][=].request.url = "RelatedPerson/RelativeRelatedPersonExample"

* entry[Father][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/PatientFatherRelatedPersonExample"
* entry[Father][=].resource = PatientFatherRelatedPersonExample
* entry[Father][=].request.method = #PUT
* entry[Father][=].request.url = "RelatedPerson/PatientFatherRelatedPersonExample"

* entry[EducationalLevel][+].fullUrl = "http://hapi-fhir:8080/Observation/PatientEducationalLevelObservationExample"
* entry[EducationalLevel][=].resource = PatientEducationalLevelObservationExample
* entry[EducationalLevel][=].request.method = #PUT
* entry[EducationalLevel][=].request.url = "Observation/PatientEducationalLevelObservationExample"

* entry[DateFirstMarried][+].fullUrl = "http://hapi-fhir:8080/Observation/DatePatientFirstMarriedObservationExample"
* entry[DateFirstMarried][=].resource = DatePatientFirstMarriedObservationExample
* entry[DateFirstMarried][=].request.method = #PUT
* entry[DateFirstMarried][=].request.url = "Observation/DatePatientFirstMarriedObservationExample"

* entry[GuardianOccupation][+].fullUrl = "http://hapi-fhir:8080/Observation/GuardianOccupationObservationExample"
* entry[GuardianOccupation][=].resource = GuardianOccupationObservationExample
* entry[GuardianOccupation][=].request.method = #PUT
* entry[GuardianOccupation][=].request.url = "Observation/GuardianOccupationObservationExample"

* entry[SpouseOccupation][+].fullUrl = "http://hapi-fhir:8080/Observation/SpouseOccupationObservationExample"
* entry[SpouseOccupation][=].resource = SpouseOccupationObservationExample
* entry[SpouseOccupation][=].request.method = #PUT
* entry[SpouseOccupation][=].request.url = "Observation/SpouseOccupationObservationExample"

* entry[HomeLanguage][+].fullUrl = "http://hapi-fhir:8080/Observation/PatientHomeLanguageObservationExample"
* entry[HomeLanguage][=].resource = PatientHomeLanguageObservationExample
* entry[HomeLanguage][=].request.method = #PUT
* entry[HomeLanguage][=].request.url = "Observation/PatientHomeLanguageObservationExample"

* entry[MedicalInsuranceCompany][+].fullUrl = "http://hapi-fhir:8080/Organization/MedicalInsuranceCompanyExample"
* entry[MedicalInsuranceCompany][=].resource = MedicalInsuranceCompanyExample
* entry[MedicalInsuranceCompany][=].request.method = #PUT
* entry[MedicalInsuranceCompany][=].request.url = "Organization/MedicalInsuranceCompanyExample"

* entry[MedicalInsurance][+].fullUrl = "http://hapi-fhir:8080/Coverage/MedicalInsuranceExample"
* entry[MedicalInsurance][=].resource = MedicalInsuranceExample
* entry[MedicalInsurance][=].request.method = #PUT
* entry[MedicalInsurance][=].request.url = "Coverage/MedicalInsuranceExample"

* entry[Vaccines][+].fullUrl = "http://hapi-fhir:8080/Immunization/VaccinesExample"
* entry[Vaccines][=].resource = VaccinesExample
* entry[Vaccines][=].request.method = #PUT
* entry[Vaccines][=].request.url = "Immunization/VaccinesExample"