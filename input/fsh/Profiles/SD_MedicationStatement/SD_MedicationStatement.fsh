Profile: MophPcMedicationStatementBase
Parent: MedicationStatement
Id: mophpc-medicationstatement-base
Title: "MoPH-PC MedicationStatement"
Description: "การใช้ยาของผู้รับบริการ"
* ^url = $SD_MedicationStatement_Base
* ^status = #active
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension contains
    $EX_TH_MedicationRequestSource named medicationSource 0..* MS and
    $EX_TH_MedicationRequestNedCriteria named npc 0..* MS and
    $EX_TH_MedicationRequestApprovedNo named approvedNo 0..* MS
* status 1.. MS
* category MS
* category.coding ^slicing.discriminator[0].type = #value
* category.coding ^slicing.discriminator[=].path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains
    eclaim 1..1 MS
* category.coding[eclaim] from $VS_eClaim_MedicationCategory (extensible)
* category.coding[eclaim].system 1..
* category.coding[eclaim].code 1..
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
* effective[x] MS
* effectivePeriod MS
* dateAsserted MS
* informationSource only Reference($SD_Patient_Base or $SD_Organization_Provider)
* informationSource MS
* dosage MS
* dosage.text MS
