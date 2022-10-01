// Alias: $EX_TH_AllergyIntoleranceCertainty = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-allergy-certainty
// * extension[0]
//   * url = $EX_TH_AllergyIntoleranceCertainty
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergyCertainty#1 "certain"
Extension: EX_TH_AllergyIntoleranceCertainty
Id: ex-allergyintolerance-allergy-certainty
Title: "AllergyIntolerance: Certainty"
Description: "รหัสประเภทการวินิจฉัยการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceCertainty
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* . ^definition = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceCertainty (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyCertainty (extensible)






// Alias: $EX_TH_AllergyIntoleranceSeverity = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-allergy-severity
// * extension[+]
//   * url = $EX_TH_AllergyIntoleranceSeverity
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergySeverity#1 "ไม่ร้ายแรง (Non-serious)"
Extension: EX_TH_AllergyIntoleranceSeverity
Id: ex-allergyintolerance-allergy-severity
Title: "AllergyIntolerance: Severity"
Description: "รหัสระดับความรุนแรงของการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceSeverity
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสระดับความรุนแรงของการแพ้ยา"
* . ^definition = "รหัสระดับความรุนแรงของการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceSeverity (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergySeverity (extensible)






// Alias: $EX_TH_AllergyIntoleranceAssertType = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-allergy-assert-type
// * extension[+]
//   * url = $EX_TH_AllergyIntoleranceAssertType
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergyAssertType#3 "สถานพยาบาลอื่นเป็นผู้ให้ข้อมูล"
Extension: EX_TH_AllergyIntoleranceAssertType
Id: ex-allergyintolerance-allergy-assert-type
Title: "AllergyIntolerance: Asserter Type"
Description: "รหัสผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสผู้ให้ประวัติการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceAssertType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyAssertType (extensible)






// Alias: $EX_TH_AllergyIntoleranceAssertOrg = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-allergy-assert-org
// * extension[+]
//   * url = $EX_TH_AllergyIntoleranceAssertOrg
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_AllergyIntoleranceAssertOrg
Id: ex-allergyintolerance-allergy-assert-org
Title: "AllergyIntolerance: Asserter Organization"
Description: "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertOrg
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceAssertOrg (exactly)
* value[x] 1..
* value[x] only Reference(Organization)