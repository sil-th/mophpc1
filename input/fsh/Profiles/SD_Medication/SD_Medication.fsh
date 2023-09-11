Profile: MophPcMedicationBase
Parent: Medication
Id: mophpc-medication-base
Title: "MoPH-PC Medication"
Description: "รายละเอียดยา"
* ^url = $SD_Medication_Base
* ^status = #active
* extension contains
    $EX_TH_MedicationImageUrl named imageUrl 0..* MS
* code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    tmt 0..1 MS and
    local 0..1 MS
* code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* code.coding[tmt].system 1..
* code.coding[tmt].system = $CS_TMT (exactly)
* code.coding[tmt].code 1..
* code.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* code.coding[local].system 1..
* code.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* code.coding[local].code 1..
* doseForm MS
* doseForm.coding ^slicing.discriminator.type = #value
* doseForm.coding ^slicing.discriminator.path = "system"
* doseForm.coding ^slicing.rules = #open
* doseForm.coding contains
    snomed 0..1 and
    edqm 0..1
* doseForm.coding[snomed] from $VS_SNOMEDCT_FormCodes (extensible)
* doseForm.coding[snomed].system 1..
* doseForm.coding[snomed].system = $SCT (exactly)
* doseForm.coding[snomed].code 1..
* doseForm.coding[edqm] from $VS_IPS_MedicineDoseform (extensible)
* doseForm.coding[edqm].system 1..
* doseForm.coding[edqm].system = $EDQM (exactly)
* doseForm.coding[edqm].code 1..
* totalVolume 1.. MS

