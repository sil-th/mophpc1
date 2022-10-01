// HumanName

// * prefix = "นาย"
//   * extension
//     * url = $EX_TH_HumanNamePrefixCode
//     * valueCodeableConcept
//       * coding[0] = $CS_DOPA_NamePrefix#003 "นาย"
//       * text = "นาย"
Extension: EX_TH_HumanNamePrefixCode
Id: ex-humanname-name-prefix
Title: "HumanName: Name Prefix Code"
Description: "รหัสคำนำหน้าชื่อ"
* ^url = $EX_TH_HumanNamePrefixCode
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "HumanName.prefix"
* . 0..*
* . ^short = "รหัสคำนำหน้าชื่อ"
* . ^definition = "รหัสคำนำหน้าชื่อ"
* url = $EX_TH_HumanNamePrefixCode (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_DOPA_NamePrefix (extensible)





// Address

// * extension[0]
//   * url = $EX_TH_AddressDopaCode
//   * valueCodeableConcept = $CS_DOPA_Location#120102 "จังหวัดนนทบุรี อำเภอเมืองนนทบุรี ตำบลตลาดขวัญ"
// Alias: $EX_TH_AddressDopaCode = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-address-code

Extension: EX_TH_AddressDopaCode
Id: ex-address-address-code
Title: "Address: DOPA address code"
Description: "รหัสที่อยู่ ตามกรมการปกครอง"
* ^url = $EX_TH_AddressDopaCode
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Address"
* . 0..*
* . ^short = "รหัสที่อยู่ ตามกรมการปกครอง"
* . ^definition = "รหัสที่อยู่ ตามกรมการปกครอง"
* url = $EX_TH_AddressDopaCode (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_DOPA_Location (extensible)




Extension: EX_TH_AddressStructuredLine
Id: ex-address-structured-line
Title: "Address: Structured Address Line"
Description: "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* ^url = $EX_TH_AddressStructuredLine
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Address"
* . 0..*
* . ^short = "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* . ^definition = "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* url = $EX_TH_AddressStructuredLine (exactly)
* extension contains
    number 0..1 and
    buildingVillage 0..1 and
    villageNo 0..1 and
    road 0..1 and
    lane 0..1
* extension[number] only Extension
* extension[number] ^short = "บ้านเลขที่"
* extension[number] ^definition = "บ้านเลขที่"
  * url = "number" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[buildingVillage] only Extension
* extension[buildingVillage] ^short = "อาคาร/หมู่บ้าน"
* extension[buildingVillage] ^definition = "อาคาร/หมู่บ้าน"
  * url = "buildingVillage" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[villageNo] only Extension
* extension[villageNo] ^short = "หมู่ที่"
* extension[villageNo] ^definition = "หมู่ที่"
  * url = "villageNo" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[road] only Extension
* extension[road] ^short = "ถนน"
* extension[road] ^definition = "ถนน"
  * url = "road" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[lane] only Extension
* extension[lane] ^short = "ซอย"
* extension[lane] ^definition = "ซอย"
  * url = "lane" (exactly)
  * value[x] 1..
  * value[x] only string








  // * extension[+]
  //   * url = $EX_TH_AddressHomeReference
  //   * valueReference = Reference(location-Address1-home1)
  //     * insert GeneralReference($ID_DopaHouseNo, "XXXXXXXXXXX", "123 คอนโดพัฒนานนท์")
// Alias: $EX_TH_AddressHomeReference = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-home-reference
Extension: EX_TH_AddressHomeReference
Id: ex-address-home-reference
Title: "Address: Reference to Home"
Description: "การอ้างอิง Location resource"
* ^url = $EX_TH_AddressHomeReference
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Address"
* . 0..*
* . ^short = "ระดับการศึกษา"
* . ^definition = "ระดับการศึกษา"
* url = $EX_TH_AddressHomeReference (exactly)
* value[x] 1..
* value[x] only Reference(Location)




  // * extension[+]
  //   * url = $EX_TH_AddressHouseType
  //   * valueCodeableConcept = $CS_THCC_HouseType#3 "คอนโดมิเนียม"
// Alias: $EX_TH_AddressHouseType = https://fhir-ig.sil-th.org/mophpc1/Extension/TH-house-type

Extension: EX_TH_AddressHouseType
Id: ex-address-house-type
Title: "Address: House Type"
Description: "ลักษณะของที่อยู่"
* ^url = $EX_TH_AddressHouseType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* . 0..*
* . ^short = "ลักษณะของที่อยู่"
* . ^definition = "ลักษณะของที่อยู่"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_HouseType (extensible)






