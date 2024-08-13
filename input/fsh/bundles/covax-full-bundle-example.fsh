Instance: Covax
InstanceOf: CovaxBundle
Usage: #example
Title: "Bundle - Covax"
Description: "A bundle containing all Covax FHIR resources."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* entry[Patient][+].fullUrl = "http://hapi-fhir:8080/Patient/CovaxImmunizationPatientExample"
* entry[Patient][=].resource = CovaxImmunizationPatientExample
* entry[Patient][=].request.method = #PUT
* entry[Patient][=].request.url = "Patient/CovaxImmunizationPatientExample"

* entry[Encounter][+].fullUrl = "http://hapi-fhir:8080/Encounter/CovaxTargetFacilityEncounterExample"
* entry[Encounter][=].resource = CovaxTargetFacilityEncounterExample
* entry[Encounter][=].request.method = #PUT
* entry[Encounter][=].request.url = "Encounter/CovaxTargetFacilityEncounterExample"

* entry[Guardian][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/RelatedPersonGuardianCovaxExample"
* entry[Guardian][=].resource = RelatedPersonGuardianCovaxExample
* entry[Guardian][=].request.method = #PUT
* entry[Guardian][=].request.url = "RelatedPerson/RelatedPersonGuardianCovaxExample"

* entry[Occupation][+].fullUrl = "http://hapi-fhir:8080/Observation/PatientOccupationObservationExample"
* entry[Occupation][=].resource = PatientOccupationObservationExample
* entry[Occupation][=].request.method = #PUT
* entry[Occupation][=].request.url = "Observation/PatientOccupationObservationExample"

* entry[Pregnancy][+].fullUrl = "http://hapi-fhir:8080/Observation/PregnancyStatusExample"
* entry[Pregnancy][=].resource = PregnancyStatusExample
* entry[Pregnancy][=].request.method = #PUT
* entry[Pregnancy][=].request.url = "Observation/PregnancyStatusExample"

* entry[Lactation][+].fullUrl = "http://hapi-fhir:8080/Observation/LactationStatusExample"
* entry[Lactation][=].resource = LactationStatusExample
* entry[Lactation][=].request.method = #PUT
* entry[Lactation][=].request.url = "Observation/LactationStatusExample"

* entry[Vaccines][+].fullUrl = "http://hapi-fhir:8080/Immunization/CovaxImmunizationExample"
* entry[Vaccines][=].resource = CovaxImmunizationExample
* entry[Vaccines][=].request.method = #PUT
* entry[Vaccines][=].request.url = "Immunization/CovaxImmunizationExample"

* entry[Medication][+].fullUrl = "http://hapi-fhir:8080/Medication/CovaxVaccineExample"
* entry[Medication][=].resource = CovaxVaccineExample
* entry[Medication][=].request.method = #PUT
* entry[Medication][=].request.url = "Medication/CovaxVaccineExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/HIVConditionExample"
* entry[Condition][=].resource = HIVConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/HIVConditionExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/DiabetesMellitusConditionExample"
* entry[Condition][=].resource = DiabetesMellitusConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/DiabetesMellitusConditionExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/HypertensionConditionExample"
* entry[Condition][=].resource = HypertensionConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/HypertensionConditionExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/ImmunologyConditionExample"
* entry[Condition][=].resource = ImmunologyConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/ImmunologyConditionExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/SkinConditionExample"
* entry[Condition][=].resource = SkinConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/SkinConditionExample"

* entry[Condition][+].fullUrl = "http://hapi-fhir:8080/Condition/NeuromuscularConditionExample"
* entry[Condition][=].resource = NeuromuscularConditionExample
* entry[Condition][=].request.method = #PUT
* entry[Condition][=].request.url = "Condition/NeuromuscularConditionExample"

* entry[Allergy][+].fullUrl = "http://hapi-fhir:8080/Observation/ImmunizationAllergyExample"
* entry[Allergy][=].resource = ImmunizationAllergyExample
* entry[Allergy][=].request.method = #PUT
* entry[Allergy][=].request.url = "Observation/ImmunizationAllergyExample"

* entry[VaccineNextDose][+].fullUrl = "http://hapi-fhir:8080/ImmunizationRecommendation/VaccineNextDoseDateExample"
* entry[VaccineNextDose][=].resource = VaccineNextDoseDateExample
* entry[VaccineNextDose][=].request.method = #PUT
* entry[VaccineNextDose][=].request.url = "ImmunizationRecommendation/VaccineNextDoseDateExample"

* entry[MedicalHistory][+].fullUrl = "http://hapi-fhir:8080/List/MedicalHistoryExample"
* entry[MedicalHistory][=].resource = MedicalHistoryExample
* entry[MedicalHistory][=].request.method = #PUT
* entry[MedicalHistory][=].request.url = "List/MedicalHistoryExample"

* entry[AllergicReaction][+].fullUrl = "http://hapi-fhir:8080/AllergyIntolerance/VaccinationAllergicReactionExample"
* entry[AllergicReaction][=].resource = VaccinationAllergicReactionExample
* entry[AllergicReaction][=].request.method = #PUT
* entry[AllergicReaction][=].request.url = "AllergyIntolerance/VaccinationAllergicReactionExample"