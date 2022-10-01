Extension: EX_TH_PatientRace
Id: ex-patient-race
Title: "Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^url = $EX_TH_PatientRace
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "เชื้อชาติของบุคคล"
* . ^definition = "เชื้อชาติของบุคคล"
* url = $EX_TH_PatientRace (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_Nationality (extensible)


// Alias: $EX_TH_PatientEducationLevel = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-education-level
// * extension[+]
//   * url = $EX_TH_PatientEducationLevel
//   * valueCodeableConcept
//     * coding[0] = $CS_INT_ISCED1997#61 "ปริญญาตรี"
//     * coding[+] = $CS_THCC_EducationLevel#05 "ปริญญาตรี"
//     * text = "ปริญญาตรี"
Extension: EX_TH_PatientEducationLevel
Id: ex-patient-education-level
Title: "Patient: Education Level"
Description: "ระดับการศึกษา"
* ^url = $EX_TH_PatientEducationLevel
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "ระดับการศึกษา"
* . ^definition = "ระดับการศึกษา"
* url = $EX_TH_PatientEducationLevel (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_EducationLevel (extensible)



// Alias: $EX_TH_PatientPersonStatus = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-person-status
  // * url = $EX_TH_PatientPersonStatus
  // * valueCodeableConcept
  //   * coding[0] = $CS_THCC_PersonStatus#1 "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
  //   * text = "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
Extension: EX_TH_PatientPersonStatus
Id: ex-patient-person-status
Title: "Patient: Person Status"
Description: "สถานะบุคคล"
* ^url = $EX_TH_PatientPersonStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "สถานะบุคคล"
* . ^definition = "สถานะบุคคล"
* url = $EX_TH_PatientPersonStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PersonStatus (extensible)



// * extension[+]
//   * url = $EX_TH_PatientPidRemoveReason
//   * valueCodeableConcept
//     * coding[0] = $CS_43File_PidRemoveReason#1 "ตาย"
//     * text = "ตาย"
Extension: EX_TH_PatientPidRemoveReason
Id: ex-patient-pid-remove-reason
Title: "Patient: PID Remove Reason"
Description: "สถานะ/สาเหตุการจำหน่าย"
* ^url = $EX_TH_PatientPidRemoveReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "สถานะ/สาเหตุการจำหน่าย"
* . ^definition = "สถานะ/สาเหตุการจำหน่าย"
* url = $EX_TH_PatientPidRemoveReason (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43File_PidRemoveReason (extensible)
