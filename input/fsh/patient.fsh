Alias:   SCT = http://snomed.info/sct
Alias:   FR = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Profile:        HosxpPatient
Parent:         Patient
Id:             hosxp-patient 
Title:          "Hosxp-patient"
Description:    "A patient that is a type of fish."
* name 1..1
* maritalStatus 0..0
* communication 0..1
* extension contains Blood named group 0..1
* contact.relationship 1..1
* contact.relationship from Related (extensible)

//* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"

Extension:   Blood
Id:          phenotype
Title:       "Blood group: phenotype"
Description: "Categorize the blood group by using phenotype"
* value[x] only CodeableConcept
* valueCodeableConcept from Warfar (extensible)

ValueSet:    Warfar
Title:       "phenotype"
Id:          warfarin
Description: "Codes describing blood group using phenotype, taken from SNOMED-CT."
* codes from system SCT where concept is-a #112143006  "Blood group(phenotype)"


ValueSet:   Related
Title:      "relationship Type"
Id:         relatedPeople
* codes from system FR
