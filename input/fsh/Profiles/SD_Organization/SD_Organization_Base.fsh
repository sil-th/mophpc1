Profile: MophPcOrganizationBase
Parent: Organization
Id: mophpc-organization-base
Title: "MoPH-PC Organization"
Description: "ข้อมูลหน่วยงานต่าง ๆ"
* ^url = $SD_Organization_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* type MS
* name MS
* name ^short = "ชื่อหน่วยงาน"
* telecom MS
  * system MS
  * value MS
* address MS
  * extension contains
    $EX_TH_AddressStructuredLine named structuredLine 0..1 MS
  * type MS
  * text MS
  * line MS
  * city MS
  * district MS
  * state MS
  * postalCode MS