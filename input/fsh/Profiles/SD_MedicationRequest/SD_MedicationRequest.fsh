Profile: MophPcMedicationRequestBase
Parent: MedicationRequest
Id: mophpc-medicationrequest-base
Title: "MoPH-PC MedicationRequest"
Description: "การสั่งยา"
* ^url = $SD_MedicationRequest_Base
* ^status = #active
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
* medication MS
  * concept MS
    * coding ^slicing.discriminator.type = #value
    * coding ^slicing.discriminator.path = "system"
    * coding ^slicing.rules = #open
    * coding contains
      tmt 0..1 MS and
      local 0..1 MS
    * coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
    * coding[tmt] from $VS_TMT (extensible)
    * coding[tmt].system 1..
    * coding[tmt].system = $CS_TMT (exactly)
    * coding[tmt].code 1..
    * coding[local] ^short = "รหัสยาของสถานพยาบาล"
    * coding[local].system 1..
    * coding[local].system = $CS_TH_LocalDrugCode (exactly)
    * coding[local].code 1..
* subject only Reference($SD_Patient_Base)
* subject MS
* encounter only Reference($SD_Encounter_Base)
* encounter MS
* authoredOn MS
* requester only Reference($SD_Practitioner_Base)
* requester MS
* reason MS
* note MS
* dosageInstruction MS
  * extension contains $EX_TH_MedicationRequestDosageCode named dosageCode 0..1 MS
* dosageInstruction.text MS
