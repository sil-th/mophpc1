Extension: EX_TH_MedicationRequestSource
Id: ex-medicationrequest-medication-source
Title: "MedicationRequest: Medication Source"
Description: "ที่มาของยา"
* ^url = $EX_TH_MedicationRequestSource
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* . 0..*
* . ^short = "ที่มาของยา"
* . ^definition = "ที่มาของยา"
* url = $EX_TH_MedicationRequestSource (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_Std15_MedicationSource (extensible)



Extension: EX_TH_MedicationRequestNedCriteria
Id: ex-medicationrequest-ned-criteria
Title: "MedicationRequest: Out of NLEM Reason"
Description: "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential drug Prescription Criteria)"
* ^url = $EX_TH_MedicationRequestNedCriteria
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . 0..*
* . ^short = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential drug Prescription Criteria)"
* . ^definition = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential drug Prescription Criteria)"
* url = $EX_TH_MedicationRequestNedCriteria (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_MedNedCriteria (extensible)





Extension: EX_TH_MedicationRequestApprovedNo
Id: ex-medicationrequest-med-approved-no
Title: "MedicationRequest: Med Approve Number"
Description: "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* ^url = $EX_TH_MedicationRequestApprovedNo
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . 0..*
* . ^short = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* . ^definition = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* url = $EX_TH_MedicationRequestApprovedNo (exactly)
* value[x] 1..
* value[x] only string




Extension: EX_TH_MedicationRequestDosageCode
Id: ex-medicationrequest-med-dosage-code
Title: "MedicationRequest: Med Dosage Code"
Description: "รหัสวิธีการใช้ยา"
* ^url = $EX_TH_MedicationRequestDosageCode
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationRequest.dosageInstruction"
* . 0..*
* . ^short = "รหัสวิธีการใช้ยา"
* . ^definition = "รหัสวิธีการใช้ยา"
* url = $EX_TH_MedicationRequestDosageCode (exactly)
* value[x] 1..
* value[x] only string

