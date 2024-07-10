Instance:     ProprietaryEducationLevelToLOINCEducationLevel
InstanceOf:   ConceptMap
Title:     "Proprietary Education Level to LOINC Education Level"
Description:  "Mapping to and from Proprietary Education Level to LOINC Education Level."
Usage:        #definition

* name = "ProprietaryEducationLevelToLOINCEducationLevel"
* description = "Mapping to and from Proprietary Education Level to LOINC Education Level."
* title = "ConceptMap to and From proprietary education level to LOINC education Level"
* status = #active
* experimental = false
* date = "2024-01-31"

* group[+]
  * source = $PROPRIETARY_EDU_LEVEL
  * target = $LNC
  * insert ElementMap(CertificateGraduate, LA30193-9, equivalent)
  * insert ElementMap(DegreeGraduate, LA32469-1, equivalent)
  * insert ElementMap(DiplomaGraduate, LA12459-6, equivalent)
  * insert ElementMap(JuniorSecondary, LA36-9, equivalent)
  * insert ElementMap(MastersGraduate, LA12461-2, equivalent)
  * insert ElementMap(NoFormalEducation, LA35-1, equivalent)
  * insert ElementMap(PhDGraduate, LA30185-5,  equivalent)
  * insert ElementMap(Primary, LA32466-7, equivalent)
  * insert ElementMap(SeniorSecondary, LA37-7, equivalent)

* group[+]
  * source = $LNC
  * target = $PROPRIETARY_EDU_LEVEL
  * insert ElementMap(LA30193-9, CertificateGraduate, equivalent)
  * insert ElementMap(LA32469-1, DegreeGraduate, equivalent)
  * insert ElementMap(LA12459-6, DiplomaGraduate, equivalent)
  * insert ElementMap(LA36-9, JuniorSecondary, equivalent)
  * insert ElementMap(LA12461-2, MastersGraduate, equivalent)
  * insert ElementMap(LA35-1, NoFormalEducation, equivalent)
  * insert ElementMap(LA30185-5, PhDGraduate,  equivalent)
  * insert ElementMap(LA32466-7, Primary, equivalent)
  * insert ElementMap(LA37-7, SeniorSecondary, equivalent)