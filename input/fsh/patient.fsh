// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"


Profile: SomePractitioner
Parent: CHmCSDPractitioner
Title: "Joker Practitioner"
* ^status = #active
* ^experimental = false
* identifier contains 
    YeahMoreComplexity 1..1 
* identifier[YeahMoreComplexity] only YeahMoreComplexity
* identifier[YeahMoreComplexity] ^short = "YeahMoreComplexity of the Practitioner"


Profile: YeahMoreComplexity
Parent: Identifier
Id: YeahMoreComplexity
Title: "Joker YeahMoreComplexity Identifier"
Description: "Unique Identifier"
* ^status = #active
* ^experimental = false
* system 1..
* system = "http://localhost/sldfkj"
* value 1..



Instance: mCSD-No-peer-Practitioner-DrAndrews
InstanceOf: SomePractitioner
Title: "mCSD-No-peer-Practitioner-DrAndrews"
Description: "Resource Practitioner 'DrAndrews'"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002469197"
* identifier[YeahMoreComplexity].system = "http://localhost/sldfkj"
* identifier[YeahMoreComplexity].value = "example2:abc-def.789"
* active = true
* name.text = "Ann Andrews"
* name.family = "Andrews"
* name.given = "Ann"
* name.prefix = "Dr."
* telecom[0].system = #email
* telecom[=].value = "ann.andrews@email.com"
* telecom[+].system = #phone
* telecom[=].value = "+41 32 001 00 04"
* gender = #female
* communication[0] = urn:ietf:bcp:47#de
* communication[+] = urn:ietf:bcp:47#fr
* communication[+] = urn:ietf:bcp:47#en
* communication[+] = urn:ietf:bcp:47#it
* qualification[0].code = http://snomed.info/sct#3842006 "Chiropractor"
* qualification[+].code = urn:oid:2.16.756.5.30.1.127.3.5#1011 "Chiropractic specialist"
