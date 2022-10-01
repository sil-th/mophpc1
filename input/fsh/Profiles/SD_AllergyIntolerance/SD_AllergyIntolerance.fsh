Profile: MophPcAllergyIntoleranceBase
Parent: AllergyIntolerance
Id: mophpc-allergyintolerance-base
Title: "MoPH-PC AllergyIntolerance"
Description: "ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ"
* ^url = $SD_AllergyIntolerance_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_AllergyIntoleranceCertainty named certainty 0..1 MS and
    $EX_TH_AllergyIntoleranceSeverity named severityTH 0..1 MS and
    $EX_TH_AllergyIntoleranceAssertType named asserterType 0..1 MS and
    $EX_TH_AllergyIntoleranceAssertOrg named asserterOrg 0..1 MS
* extension[certainty] ^short = "ประเภทการวินิจฉัยการแพ้ยา 5 ประเภท"
* extension[severityTH] ^short = "ระดับความรุนแรงของการแพ้ยา 8 ระดับ"
* extension[asserterType] ^short = "ผู้ให้ประวัติการแพ้ยา"
* extension[asserterOrg] ^short = "สถานพยาบาลที่บันทึกประวัติการแพ้"
* clinicalStatus MS
* clinicalStatus ^short = "สถานะการแพ้"
* clinicalStatus.coding ^slicing.discriminator.type = #pattern
* clinicalStatus.coding ^slicing.discriminator.path = "$this"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains
    hl7 0..1 MS and
    eRefer 0..1 MS
* clinicalStatus.coding[hl7] ^short = "รหัสสถานะการแพ้จาก HL7"
* clinicalStatus.coding[hl7] from $VS_HL7_AlleryActive (required)
* clinicalStatus.coding[hl7].system 1..
* clinicalStatus.coding[hl7].system = $CS_HL7_AlleryActive (exactly)
* clinicalStatus.coding[hl7].code 1..
* clinicalStatus.coding[eRefer] ^short = "รหัสสถานะการแพ้จาก e-Refer"
* clinicalStatus.coding[eRefer] from $VS_Std15_AllergyVerify (required)
* clinicalStatus.coding[eRefer].system 1..
* clinicalStatus.coding[eRefer].system = $CS_Std15_AllergyVerify (exactly)
* clinicalStatus.coding[eRefer].code 1..
* code MS
* code ^short = "ระบุชนิดยาที่แพ้ หรือสิ่งที่แพ้"
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    24drug 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS and
    noAllergies 0..1 MS
* code.coding[24drug] ^short = "รหัสยามาตรฐาน 24 หลัก"
* code.coding[24drug] from $VS_24Drug (extensible)
* code.coding[24drug].system 1..
* code.coding[24drug].system = $CS_24Drug (exactly)
* code.coding[24drug].code 1..
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
* recorder only Reference($SD_Practitioner_Base)
* recorder MS
* recorder ^short = "ผู้บันทึกข้อมูล"
* asserter MS
* asserter ^short = "ผู้ยืนยันข้อมูล"
* reaction MS
  * manifestation MS
  * manifestation ^short = "ลักษณะอาการแพ้"
  * severity MS
  * severity ^short = "ระดับความรุนแรงของการแพ้"
* reaction ^short = "เหตุการณ์ที่เกิดอาการแพ้"
// ต้องมี severityTH เพราะ severity ไม่ใช่ CodeableConcept เลย bind หลาย code ไม่ได้