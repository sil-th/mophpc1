Profile: MophPcMedicationDispenseBase
Parent: MedicationDispense
Id: mophpc-medicationdispense-base
Title: "MoPH-PC MedicationDispense"
Description: "การจ่ายยา"
* ^url = $SD_MedicationDispense_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains $EX_TH_MedicationDispenseDeliveryMode named deliveryMode 0..* MS
* medication[x] 1.. MS
* medication[x] only CodeableConcept
* medicationCodeableConcept MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    tmt 0..1 MS and
    local 0..1 MS
* medicationCodeableConcept.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* medicationCodeableConcept.coding[tmt] from $VS_TMT (extensible)
* medicationCodeableConcept.coding[tmt].system 1..
* medicationCodeableConcept.coding[tmt].system = $CS_TMT (exactly)
* medicationCodeableConcept.coding[tmt].code 1..
* medicationCodeableConcept.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* medicationCodeableConcept.coding[local].system 1..
* medicationCodeableConcept.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* medicationCodeableConcept.coding[local].code 1..
* subject only Reference($SD_Patient_Base)
* subject MS
* performer MS
* performer.actor only Reference($SD_Practitioner_Base)
* performer.actor MS
* performer.actor ^short = "เภสัชกรที่จ่ายยา"
* authorizingPrescription only Reference($SD_MedicationRequest_Base)
* authorizingPrescription MS
* quantity MS
* daysSupply MS
* whenHandedOver MS
