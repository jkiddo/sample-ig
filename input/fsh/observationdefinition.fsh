Profile: SomeObservationDefinition
Title: "Some Observation Definition"
Parent: ObservationDefinition
* code 1..
* permittedDataType 0..1
* extension contains
    http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.title named title 0..1 and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.component named component 0..
* modifierExtension contains
    http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.status named status 0..1 ?!
* modifierExtension[http://hl7.org/fhir/5.0/StructureDefinition/extension-ObservationDefinition.status] ^isModifierReason = "Status change is modifying the meaning"