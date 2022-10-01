Profile: MophPcObservationPhysicalBase
Parent: Observation
Id: mophpc-observation-physical-base
Title: "MoPH-PC Observation: Physical"
Description: "ข้อมูลการตรวจร่างกาย"
* ^url = $SD_Observation_PhysicalBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains hl7 0..1
* category[hl7] from $VS_HL7_ObservationCat (extensible)
* category[hl7] = $CS_HL7_ObservationCat#exam
* code MS
* code ^short = "รหัสการตรวจร่างกาย"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 0..1 MS
* code.coding[code43Plus] from $VS_Meta_PhysicalExam_ObsList (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] ^short = "ผลการตรวจร่างกาย"
* interpretation MS
* note MS