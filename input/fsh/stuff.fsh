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
* ^supplements = "urn:iso:std:iso:3166"
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


Alias: $sct = http://snomed.info/sct
Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode

Instance: CH-MDH-EXAMPLE
InstanceOf: DocumentReference
Usage: #example
* meta.profile = "http://fhir.ch/ig/ch-epr-fhir/StructureDefinition/ch-mhd-documentreference-comprehensive"
* masterIdentifier.system = "http://someone/document-uniqueId"
* masterIdentifier.value = "urn:oidcc74e20a-0dc7-4379-9fd1-07564ff3af81"
* identifier[0].use = #usual
* identifier[=].system = "http://someone/home-community-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* identifier[+].use = #usual
* identifier[=].system = "http://someone/entry-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* identifier[+].use = #usual
* identifier[=].system = "http://someone/xds-logical-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* status = #current
* type = $sct#722446000
* category = $sct#184216000
* subject = Reference(PatientExample)
* date = "2025-03-13T10:21:30.092+01:00"
* author = Reference(PatientExample)
* description = "Test Deletion Desc"
* securityLabel = $sct#17621005
* content.attachment.contentType = #application/pdf
* content.attachment.language = #it-CH
* content.attachment.url = "urn:uuid:937500cf-20fe-402b-8ec4-8e6683773193"
* content.attachment.hash = "8843d7f92416211de9ebb963ff4ce28125932878"
* content.attachment.title = "Test new version author-self"
* content.attachment.creation = "2025-03-13T10:21:30+01:00"
* content.format = $formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient
* context.facilityType = $sct#22232009
* context.practiceSetting = $sct#394802001
* context.sourcePatientInfo = Reference(PatientExample)
* extension[0].url = "http://fhir.ch/ig/ch-epr-fhir/StructureDefinition/ch-ext-author-authorrole"
* extension[=].valueCoding = urn:oid:2.16.756.5.30.1.127.3.10.6#HCP "Healthcare professional"


Instance: IHE-MDH-EXAMPLE
InstanceOf: DocumentReference
Usage: #example
* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
* masterIdentifier.system = "http://someone/document-uniqueId"
* masterIdentifier.value = "urn:oidcc74e20a-0dc7-4379-9fd1-07564ff3af81"
* identifier[0].use = #usual
* identifier[=].system = "http://someone/home-community-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* identifier[+].use = #usual
* identifier[=].system = "http://someone/entry-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* identifier[+].use = #usual
* identifier[=].system = "http://someone/xds-logical-id"
* identifier[=].value = "urn:oid9789b04e-e78b-4cde-9232-2ee796d99a49"
* status = #current
* type = $sct#722446000
* category = $sct#184216000
* subject = Reference(PatientExample)
* date = "2025-03-13T10:21:30.092+01:00"
* author = Reference(PatientExample)
* description = "Test Deletion Desc"
* securityLabel = $sct#17621005
* content.attachment.contentType = #application/pdf
* content.attachment.language = #it-CH
* content.attachment.url = "urn:uuid:937500cf-20fe-402b-8ec4-8e6683773193"
* content.attachment.hash = "8843d7f92416211de9ebb963ff4ce28125932878"
* content.attachment.title = "Test new version author-self"
* content.attachment.creation = "2025-03-13T10:21:30+01:00"
* content.format = $formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient
* context.facilityType = $sct#22232009
* context.practiceSetting = $sct#394802001
* context.sourcePatientInfo = Reference(PatientExample)
* extension[0].url = "http://fhir.ch/ig/ch-epr-fhir/StructureDefinition/ch-ext-author-authorrole"
* extension[=].valueCoding = urn:oid:2.16.756.5.30.1.127.3.10.6#HCP "Healthcare professional"