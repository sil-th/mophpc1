Profile: MophPcConditionBase
Parent: Condition
Id: mophpc-condition-base
Title: "MoPH-PC Condition"
Description: "การวินิจฉัยโรค/ปัญหาสุขภาพ/อาการทางคลินิก"
* ^url = $SD_Condition_Base
* ^status = #active
* extension contains
    $EX_HL7_ConditionDueTo named dueTo 0..* MS and
    $EX_TH_ConditionChronicDischargeReason named chronicDischargeReason 0..1 MS
* clinicalStatus MS
* clinicalStatus ^short = "สถานะของโรค"
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains
    hl7 0..1 MS
* clinicalStatus.coding[hl7] from $VS_HL7_ConditionStatus (required)
* clinicalStatus.coding[hl7].system 1..
* clinicalStatus.coding[hl7].system = $CS_HL7_ConditionStatus (exactly)
* clinicalStatus.coding[hl7].code 1..
* category MS
* category ^short = "ประเภทของการวินิจฉัยและอาการทางคลินิก"
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains
    hl7 0..1 MS and
    th 0..1 MS and
    addition 0..1
* category.coding[hl7] from $VS_HL7_ConditionCategory (extensible)
* category.coding[hl7].system = $CS_HL7_ConditionCategory
* category.coding[th] from $VS_43Plus_EncounterDiagnosisRole (extensible)
* category.coding[th].system = $CS_43Plus_EncounterDiagnosisRole
* category.coding[addition] from $VS_Meta_ExtendedHL7DiagnosisRole (extensible)
* category.coding[addition].system = $CS_Meta_ExtendedHL7DiagnosisRole
* code MS
* code ^short = "คำวินิจฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10 0..1 MS and
    snomed 0..1 MS
* code.coding[icd10] from $VS_ICD10 (required)
* code.coding[icd10].system 1..
* code.coding[icd10].system = $ICD10 (exactly)
* code.coding[icd10].code 1..
* code.coding[snomed] from $VS_SNOMED_INT (required)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject only Reference($SD_Patient_Base)
* subject MS
* onset[x] MS
* recordedDate MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "function"
* participant ^slicing.rules = #open
* participant contains
  author 0..1 MS
* participant[author] MS
* participant[author] ^short = "ผู้ยืนยันความถูกต้องของข้อมูล"
* participant[author].function = $CS_HL7_ProvenanceParticipantType#author
* participant[author].actor only Reference($SD_Practitioner_Base)
* note MS