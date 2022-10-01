Extension: EX_TH_PractitionerQualificationIssuer
Id: ex-practitioner-qualification-issuer
Title: "Practitioner: Qualification Issuer"
Description: "รหัสสภาวิชาชีพ"
* ^url = $EX_TH_PractitionerQualificationIssuer
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Practitioner.qualification.issuer"
* . 0..*
* . ^short = "รหัสสภาวิชาชีพ"
* . ^definition = "รหัสสภาวิชาชีพ"
* url = $EX_TH_PractitionerQualificationIssuer (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_QualificationIssuer (extensible)
