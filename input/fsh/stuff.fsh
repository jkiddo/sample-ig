CodeSystem: CodeSystemSupplementISO3166
Id: supplement-iso-3166-2
Title: "ISO 3166-2 Codes for the representation of names of countries and their subdivisions — Part 2: Country subdivision code"
* ^status = #active
* ^content = #supplement
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^supplements = "urn:iso:std:iso:3166"
* #AF
* #AF ^designation[0].language = #de-CH
* #AF ^designation[=].value = "Afghanistan"
* #AF ^designation[+].language = #fr-FR
* #AF ^designation[=].value = "Afghanistan"
* #AF ^designation[+].language = #it-IT
* #AF ^designation[=].value = "Afghanistan"
* #EG
* #EG ^designation[0].language = #de-CH
* #EG ^designation[=].value = "Ägypten"
* #EG ^designation[+].language = #fr-FR
* #EG ^designation[=].value = "Égypte"
* #EG ^designation[+].language = #it-IT
* #EG ^designation[=].value = "Egitto"



CodeSystem: CodeSystemSupplementISO3166_3
Id: supplement-iso-3166-3
Title: "ISO 3166-3 Codes for the representation of names of countries and their subdivisions — Part 3: Code for formerly used names of countries"
* ^status = #active
* ^content = #supplement
* ^experimental = false
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^supplements = "urn:iso:std:iso:3166:-3"
* #AFG
* #AFG ^designation[0].language = #de-CH
* #AFG ^designation[=].value = "Afghanistan"
* #AFG ^designation[+].language = #fr-FR
* #AFG ^designation[=].value = "Afghanistan"
* #AFG ^designation[+].language = #it-IT
* #AFG ^designation[=].value = "Afghanistan"
* #EGY
* #EGY ^designation[0].language = #de-CH
* #EGY ^designation[=].value = "Ägypten"
* #EGY ^designation[+].language = #fr-FR
* #EGY ^designation[=].value = "Égypte"
* #EGY ^designation[+].language = #it-IT
* #EGY ^designation[=].value = "Egitto"



ValueSet: Iso3166-1-2
Id: iso3166-1-2
* include codes from system urn:iso:std:iso:3166 where code regex /[A-Z]{2}/

ValueSet: Iso3166-1-3
Id: iso3166-1-3
* include codes from system urn:iso:std:iso:3166 where code regex /[A-Z]{3}/

ValueSet: CombinedIso3166Implicit
Id: iso3166-1-combined-2-3-implicit
* include codes from valueset iso3166-1-2 and iso3166-1-3


ValueSet: CombinedIso3166Explicit
Id: iso3166-1-combined-2-3-explicit
* include codes from system urn:iso:std:iso:3166 where code regex /[A-Z]{2}/
* include codes from system urn:iso:std:iso:3166 where code regex /[A-Z]{3}/


Instance: expParam
InstanceOf: Parameters
Description: "Expansion parameter"
Usage: #definition
* parameter[+].name = "includeDesignations"
* parameter[=].valueBoolean = true
//* parameter[+].name = "displayLanguage"
//* parameter[=].valueCode = urn:ietf:bcp:47#da