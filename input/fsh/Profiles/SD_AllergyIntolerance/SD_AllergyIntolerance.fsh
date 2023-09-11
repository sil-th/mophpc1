Profile: MophPcAllergyIntoleranceBase
Parent: AllergyIntolerance
Id: mophpc-allergyintolerance-base
Title: "MoPH-PC AllergyIntolerance"
Description: "การแพ้ยาและสารอื่น ๆ"
* ^url = $SD_AllergyIntolerance_Base
* ^status = #active
* extension contains
    $EX_TH_AllergyIntoleranceCertainty named certainty 0..1 MS and
    $EX_TH_AllergyIntoleranceSeverity named severityTH 0..1 MS and
    $EX_TH_AllergyIntoleranceAssertType named asserterType 0..1 MS and
    $EX_TH_AllergyIntoleranceAssertOrg named asserterOrg 0..1 MS
* clinicalStatus MS
* clinicalStatus ^short = "สถานะการแพ้"
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains
    hl7 0..1 MS
* clinicalStatus.coding[hl7] ^short = "รหัสสถานะการแพ้จาก HL7"
* clinicalStatus.coding[hl7] from $VS_HL7_AlleryActive (required)
* clinicalStatus.coding[hl7].system 1..
* clinicalStatus.coding[hl7].system = $CS_HL7_AlleryActive (exactly)
* clinicalStatus.coding[hl7].code 1..
* code MS
* code ^short = "ระบุชนิดยาที่แพ้ หรือสิ่งที่แพ้"
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    tmt 0..1 MS and
    local 0..1 MS and
    noAllergies 0..1 MS
* code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* code.coding[tmt] from $VS_TMT (extensible)
* code.coding[tmt].system 1..
* code.coding[tmt].system = $CS_TMT (exactly)
* code.coding[tmt].code 1..
* code.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* code.coding[local].system 0..
* code.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* code.coding[local].code 1..
* code.coding[noAllergies] ^short = "ใช้ในกรณีไม่มีสิ่งที่แพ้ หรือไม่ทราบประวัติแพ้"
* code.coding[noAllergies] from $VS_IPS_AbsentUnknownAllergies (extensible)
* code.coding[noAllergies].system 1..
* code.coding[noAllergies].system = $CS_IPS_AbsentUnknownAllergies (exactly)
* code.coding[noAllergies].code 1..
* patient only Reference($SD_Patient_Base)
* patient MS
* recordedDate MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "function"
* participant ^slicing.rules = #open
* participant contains
  author 0..1 MS and
  informant 0..1 MS  
* participant[author] MS
* participant[author] ^short = "ผู้ยืนยันความถูกต้องของข้อมูล"
* participant[author].function = $CS_HL7_ProvenanceParticipantType#author
* participant[author].actor only Reference($SD_Practitioner_Base)
* participant[informant] MS
* participant[informant] ^short = "ผู้ให้ข้อมูลการแพ้"
* participant[informant].function = $CS_HL7_ProvenanceParticipantType#informant
* reaction MS
  * manifestation MS
  * manifestation ^short = "ลักษณะอาการแพ้"
  * severity MS
  * severity ^short = "ระดับความรุนแรงของการแพ้"
* reaction ^short = "เหตุการณ์ที่เกิดอาการแพ้"
// ต้องมี severityTH เพราะ severity ไม่ใช่ CodeableConcept เลย bind หลาย code ไม่ได้