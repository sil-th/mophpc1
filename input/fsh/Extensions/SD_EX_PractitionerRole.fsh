Extension: EX_TH_PractitionerRoleProviderMovement
Id: ex-practitionerrole-provider-move
Title: "PractitionerRole: Provider Movement"
Description: "ข้อมูลการย้ายสถานพยาบาล"
* ^url = $EX_TH_PractitionerRoleProviderMovement
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . 0..*
* . ^short = "ข้อมูลการย้ายสถานพยาบาล"
* . ^definition = "ข้อมูลการย้ายสถานพยาบาล"
* url = $EX_TH_PractitionerRoleProviderMovement (exactly)
* extension contains
    movefrom 0..1 and
    period 0..1 and
    moveto 0..1
* extension[movefrom] only Extension
* extension[movefrom] ^short = "รหัสสถานพยาบาลที่ย้ายมา"
* extension[movefrom] ^definition = "รหัสสถานพยาบาลที่ย้ายมา"
  * url = "movefrom" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)
* extension[moveto] only Extension
* extension[moveto] ^short = "รหัสสถานพยาบาลที่ย้ายไป"
* extension[moveto] ^definition = "รหัสสถานพยาบาลที่ย้ายไป"
  * url = "moveto" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)