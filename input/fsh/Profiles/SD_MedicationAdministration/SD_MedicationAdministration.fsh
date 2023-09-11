Profile: MophPcMedicationAdministrationBase
Parent: MedicationAdministration
Id: mophpc-medicationadministration-base
Title: "MoPH-PC MedicationAdministration"
Description: "การบริหารยา"
* ^url = $SD_MedicationAdministration_Base
* ^status = #active
* status MS
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
* occurenceDateTime MS
* occurencePeriod MS
