Profile: MophPcOrganizationProvider
Parent: Organization
Id: mophpc-organization-provider
Title: "MoPH-PC Organization: Provider"
Description: "หน่วยบริการสุขภาพ"
* ^url = $SD_Organization_Provider
* ^status = #active
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
  hcode 0..1 and
  depCode 0..1
* identifier[hcode] ^short = "รหัสสถานพยาบาล 5 หลัก หรือ 9 หลัก"
* identifier[hcode].type from $VS_TH_IdentifierType (extensible)
* identifier[hcode].type = $CS_TH_IdentifierType#hcode
* identifier[hcode].system 1..
* identifier[hcode].system = $ID_Hcode (exactly)
* identifier[hcode].value 1..
* identifier[hcode].value obeys hcode-length
* identifier[depCode] ^short = "รหัสประจำแผนก ของหน่วยบริการ"
* identifier[depCode].type from $VS_TH_IdentifierType (extensible)
* identifier[depCode].type = $CS_TH_IdentifierType#localDep
* identifier[depCode].system 1..
* identifier[depCode].value 1..
* name MS
* name ^short = "ชื่อสถานพยาบาล"
* partOf only Reference($SD_Organization_Provider)
* partOf MS