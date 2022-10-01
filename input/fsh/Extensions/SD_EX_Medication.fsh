Extension: EX_TH_MedicationImageUrl
Id: ex-medication-image-url
Title: "Medication: Image URL"
Description: "URL ของรูปถ่ายยา"
* ^url = $EX_TH_MedicationImageUrl
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Medication"
* . 0..*
* . ^short = "URL ของรูปถ่ายยา"
* . ^definition = "URL ของรูปถ่ายยา"
* url = $EX_TH_MedicationImageUrl (exactly)
* value[x] 1..
* value[x] only uri