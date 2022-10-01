Profile: MophPcPractitionerBase
Parent: Practitioner
Id: mophpc-practitioner-base
Title: "MoPH-PC Practitioner"
Description: "ข้อมูลผู้ให้บริการของสถานพยาบาล"
* ^url = $SD_Practitioner_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    cid 0..1 MS and
    proId 0..1 MS and
    doctorId 0..1 MS and
    nurseId 0..1 MS and
    pharmId 0..1 MS and
    dentId 0..1 MS and
    medtechId 0..1 MS and
    physioId 0..1 MS and
    vetId 0..1 MS and
    volunId 0..1 MS
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system 1..
  * system = $ID_ThaiCid (exactly)
  * value 1..
  * value obeys CID-length
  * value ^example.label = "เลขประจำตัวประชาชน"
  * value ^example.valueString = "1234567890123"
* identifier[proId] ^short = "เลขที่ผู้ให้บริการ ออกโดยโปรแกรม ไม่ซ้ำกันในสถานพยาบาลเดียวกัน"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localProv
  * system 1..
  * system obeys ProID-uri
  * system ^example.label = "Provider ID namespace"
  * system ^example.valueUri = $ID_LO_Provider
  * value 1..
* identifier[doctorId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเวชกรรม"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proDoc
  * system 1..
  * value 1..
* identifier[nurseId] ^short = "เลขใบอนุญาตประกอบวิชาชีพพยาบาล"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proNurse
  * system 1..
  * value 1..
* identifier[pharmId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเภสัชกร"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proPharm
  * system 1..
  * value 1..
* identifier[dentId] ^short = "เลขใบอนุญาตประกอบวิชาชีพทันตกรรม"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proDent
  * system 1..
  * value 1..
* identifier[medtechId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเทคนิคการแพทย์"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proMedtech
  * system 1..
  * value 1..
* identifier[physioId] ^short = "เลขใบอนุญาตประกอบวิชาชีพกายภาพบำบัด"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proPhysio
  * system 1..
  * value 1..
* identifier[vetId] ^short = "เลขใบอนุญาตประกอบวิชาชีพการสัตวแพทย์"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proVet
  * system 1..
  * value 1..
* identifier[volunId] ^short = "เลขประจำตัวอาสาสมัครสาธารณสุขประจำหมู่บ้าน (อสม.)"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#healthVolun
  * system 1..
  * value 1..
* name MS
* name ^short = "ชื่อ-นามกสุล"
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[=].path = "extension('http://hl7.org/fhir/StructureDefinition/language').value"
* name ^slicing.rules = #open
* name contains
  thai 0..* MS and
  english 0..*
* name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
* name[thai].extension contains
  $EX_HL7_Language named language 1..1 MS
* name[thai].extension[language] ^short = "ภาษา"  
* name[thai].extension[language].valueCode = #th (exactly)
* name[thai].family MS
* name[thai].family ^short = "นามสกุล ภาษาไทย"
* name[thai].given MS
* name[thai].given ^short = "ชื่อ ภาษาไทย"
* name[thai].prefix MS
* name[thai].prefix ^short = "คำนำหน้า ภาษาไทย"
* name[english] ^short = "ชื่อ-นามสกุล ภาษาอังกฤษ (ถ้ามี)"
* name[english].extension contains
  $EX_HL7_Language named language 1..1 MS
* name[english].extension[language] ^short = "ภาษา"  
* name[english].extension[language].valueCode = #en (exactly)
* name[english].family MS
* name[english].family ^short = "นามสกุล ภาษาอังกฤษ"
* name[english].given MS
* name[english].given ^short = "ชื่อ ภาษาอังกฤษ"
* name[english].prefix MS
* name[english].prefix ^short = "คำนำหน้า ภาษาอังกฤษ"
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..* MS and
    email 0..* MS
* telecom[phone] ^short = "โทรศัพท์ติดต่อ"
* telecom[phone] ^comment = "เบอร์โทรศัพท์ที่ใช้ในการติดต่อ (ที่ทำงาน)"
* telecom[phone].system = #phone (exactly)
* telecom[email] ^short = "E-mail ติดต่อ"
* telecom[email] ^comment = "E-mail ที่ใช้ในการติดต่อ (ที่ทำงาน)"
* telecom[email].system = #email (exactly)
* gender MS
* gender ^short = "เพศ"
* birthDate MS
* birthDate ^short = "วันเกิด"
* qualification MS
  * code MS
  * period MS
  * issuer MS
    * extension contains $EX_TH_PractitionerQualificationIssuer named qualificationIssuer 0..1 MS

