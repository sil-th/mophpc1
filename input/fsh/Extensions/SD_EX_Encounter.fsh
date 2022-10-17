Extension: EX_TH_EncounterPatientLocationType
Id: ex-encounter-patient-location-type
Title: "Encounter: Patient Location Type"
Description: "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* ^url = $EX_TH_EncounterPatientLocationType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.subject"
* . 0..*
* . ^short = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* . ^definition = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* url = $EX_TH_EncounterPatientLocationType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PatientLocationType (extensible)






Extension: EX_TH_EncounterServiceHour
Id: ex-encounter-service-hour
Title: "Encounter: Service Hour"
Description: "รหัสเวลามารับบริการ"
* ^url = $EX_TH_EncounterServiceHour
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.period"
* . 0..*
* . ^short = "รหัสเวลามารับบริการ"
* . ^definition = "รหัสเวลามารับบริการ"
* url = $EX_TH_EncounterServiceHour (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceHour (extensible)






Extension: EX_TH_EncounterServiceLocationType
Id: ex-encounter-service-location-type
Title: "Encounter: Service Location Type"
Description: "รหัสสถานที่ที่ให้บริการ"
* ^url = $EX_TH_EncounterServiceLocationType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.location"
* . 0..*
* . ^short = "รหัสสถานที่ที่ให้บริการ"
* . ^definition = "รหัสสถานที่ที่ให้บริการ"
* url = $EX_TH_EncounterServiceLocationType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_ServiceLocationType (extensible)






Extension: EX_TH_EncounterServiceTypeTH
Id: ex-encounter-service-type-th
Title: "Encounter: Thai Service Type"
Description: "รหัสประเภทการให้บริการ"
* ^url = $EX_TH_EncounterServiceTypeTH
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสประเภทการให้บริการ"
* . ^definition = "รหัสประเภทการให้บริการ"
* url = $EX_TH_EncounterServiceTypeTH (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ServiceTypeTH (extensible)






Extension: EX_TH_EncounterDischargeStatus
Id: ex-encounter-discharge-status
Title: "Encounter: Discharge Status"
Description: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* ^url = $EX_TH_EncounterDischargeStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* . ^definition = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* url = $EX_TH_EncounterDischargeStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  thccService 0..1 MS and
  thccChronic 0..1 MS
* valueCodeableConcept.coding[thccService] from $VS_THCC_DischargeStatus (required)
* valueCodeableConcept.coding[thccChronic] from $VS_THCC_ChronicDischargeReason (required)




Extension: EX_TH_EncounterDischargeInstruction
Id: ex-encounter-discharge-instruction
Title: "Encounter: Discharge Instruction"
Description: "คำแนะนำหลังการเข้ารับบริการ"
* ^url = $EX_TH_EncounterDischargeInstruction
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "คำแนะนำหลังการเข้ารับบริการ"
* . ^definition = "คำแนะนำหลังการเข้ารับบริการ"
* url = $EX_TH_EncounterDischargeInstruction (exactly)
* value[x] 1..
* value[x] only Annotation








Extension: EX_TH_EncounterProviderType
Id: ex-encounter-provider-type
Title: "Encounter: Provider Type"
Description: "รหัสประเภทสถานพยาบาลที่รักษา"
* ^url = $EX_TH_EncounterProviderType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.serviceProvider"
* . 0..*
* . ^short = "รหัสประเภทสถานพยาบาลที่รักษา"
* . ^definition = "รหัสประเภทสถานพยาบาลที่รักษา"
* url = $EX_TH_EncounterProviderType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ProviderType (extensible)



