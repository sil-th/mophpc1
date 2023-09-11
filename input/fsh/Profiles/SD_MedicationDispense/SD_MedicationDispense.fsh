Profile: MophPcMedicationDispenseBase
Parent: MedicationDispense
Id: mophpc-medicationdispense-base
Title: "MoPH-PC MedicationDispense"
Description: "การจ่ายยา"
* ^url = $SD_MedicationDispense_Base
* ^status = #active
* extension contains $EX_TH_MedicationDispenseDeliveryMode named deliveryMode 0..* MS
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
* performer MS
* performer.actor only Reference($SD_Practitioner_Base)
* performer.actor MS
* performer.actor ^short = "เภสัชกรที่จ่ายยา"
* authorizingPrescription only Reference($SD_MedicationRequest_Base)
* authorizingPrescription MS
* quantity MS
* daysSupply MS
* whenHandedOver MS
