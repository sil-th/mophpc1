Profile: MophPcMedicationRequestBase
Parent: MedicationRequest
Id: mophpc-medicationrequest-base
Title: "MoPH-PC MedicationRequest"
Description: "การสั่งยา"
* ^url = $SD_MedicationRequest_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_MedicationRequestSource named medicationSource 0..* MS and
    $EX_TH_MedicationRequestNedCriteria named npc 0..* MS and
    $EX_TH_MedicationRequestApprovedNo named approvedNo 0..* MS
* status 1.. MS
* intent 1.. MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains eclaim 0..1 MS
* category[eclaim].coding from $VS_eClaim_MedicationCategory (extensible)
* category[eclaim].coding.system 1..
* category[eclaim].coding.system = $CS_eClaim_MedicationCategory
* category[eclaim].coding.code 1..
* medication[x] 1.. MS
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    24-digit 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS
* medicationCodeableConcept.coding[24-digit] ^short = "รหัสยามาตรฐาน 24 หลัก"
* medicationCodeableConcept.coding[24-digit] from $VS_24Drug (extensible)
* medicationCodeableConcept.coding[24-digit].system 1..
* medicationCodeableConcept.coding[24-digit].system = $CS_24Drug (exactly)
* medicationCodeableConcept.coding[24-digit].code 1..
* medicationCodeableConcept.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* medicationCodeableConcept.coding[tmt] from $VS_TMT (extensible)
* medicationCodeableConcept.coding[tmt].system 1..
* medicationCodeableConcept.coding[tmt].system = $CS_TMT (exactly)
* medicationCodeableConcept.coding[tmt].code 1..
* medicationCodeableConcept.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* medicationCodeableConcept.coding[local].system 1..
* medicationCodeableConcept.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* medicationCodeableConcept.coding[local].code 1..
* medicationReference 0..1 MS
* medicationReference only Reference($SD_Medication_Base)
* subject only Reference($SD_Patient_Base)
* subject MS
* encounter only Reference($SD_Encounter_Base)
* encounter MS
* authoredOn MS
* requester only Reference($SD_Practitioner_Base)
* requester MS
* reasonCode MS
* note MS
* dosageInstruction MS
  * extension contains $EX_TH_MedicationRequestDosageCode named dosageCode 0..1 MS
* dosageInstruction.text MS
