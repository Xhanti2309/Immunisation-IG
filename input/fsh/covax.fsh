Profile: SmartcareImmunizationPatient
Parent: ImmunizationPatient
Id: covax-immunization-patient
Title: "Patient Profile for COVAX Immunizations"
Description: "Is used to document demographics and other administrative information about an individual receiving COVID-19 immunisation or other health-related services."
* identifier contains
    cardNumber 1..1

* identifier[cardNumber].value 1..1
* identifier[cardNumber].system 1..1
* identifier[cardNumber].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-card-number"

* identifier contains
    NRC 1..1

* identifier[NRC].value 1..1
* identifier[NRC].system 1..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name 1..* // Require at least one value inside the `name` element
* name and name.given and name.family MS // Mark elements as MustSupport

// The contents of `^comment` are also displayed on the "Detailed Descriptions" tab
// in the built Implementation Guide.
* birthDate ^comment = "If exact date of birth is partially or completely unknown, Implementers SHALL populate this element with the date of birth information listed on the patient's government-issued identification."

// Do not allow `gender` to be included.
* gender 0..0

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)