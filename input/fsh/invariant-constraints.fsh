Invariant: NUPIN-SmartcareID-1
Description: "Only letters, special characters (dash) and numbers are allowed. For example: 1001-XXGB0-12345-5, 5010-010-12345-5"
Expression: "$this.matches('^[0-9A-Za-z]{1,4}-[0-9A-Za-z]{1,5}-[0-9]{1,5}-[0-9]{1}$')"
Severity: #error

Invariant: NRC-SmartcareID-1
Description: "Only special characters (forward slash) and numbers are allowed. For example: 999999/99/9"
Expression: "$this.matches('^[0-9]{1,6}/[0-9]{1,2}/[0-9]{1}$')"
Severity: #error

Invariant: PatientName-Smartcare-1
Description: "If name.use is NOT nickname then name.family SHALL be present."
Expression: "use.exists() and use != 'nickname' implies family.exists() and given.exists()"
Severity: #error

Invariant: PatientName-Smartcare-2
Description: "If name.use is nickname then name.text SHALL be present."
Expression: "use.exists() and use = 'nickname' implies text.exists()"
Severity: #error

Invariant: PHONE-1
Description: "Only special characters (+) and numbers are allowed. For example: 0831231234, +27831231234"
Expression: "$this.matches('^[+]?{1}[0-9]{10,12}$')"
Severity: #error

Invariant: Passport-1
Description: "Only alphabetical characters and numbers are allowed. For example: AA01234567"
Expression: "$this.matches('^[a-zA-Z]{2,3}[0-9]{8,12}$')"
Severity: #error

Invariant: DoseNumber-PositiveInt-1
Description: "Only numbers are allowed."
Expression: "$this.matches('[0-9]*')"
Severity: #error