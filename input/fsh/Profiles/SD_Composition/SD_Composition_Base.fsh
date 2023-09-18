// Alias: $hcodeURL = http://203.157.10.8/hcode_2020/query_set.php
// Alias: $LNC = http://loinc.org
// Alias: $visitSectionVS = https://healthlink.go.th/fhir/ValueSet/VisitSectionCode

Profile: MophPCVisitComposition
Parent: Composition
Id: mophpc-composition-visit
Title: "MoPH-PC Visit Composition"
Description: "การรวมข้อมูลที่เกี่ยวข้องกับการรับบริการครั้งนั้นไว้เป็นเอกสารชุดเดียว"
* ^url = $SD_Composition_Visit
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
* status MS
* type MS
* type = $LNC#18842-5 "Discharge summary"
* subject 1..1 MS
* subject only Reference($SD_Patient_Base)
* encounter 1.. MS
* encounter only Reference($SD_Encounter_Base)
* date MS
* author MS
* author only Reference($SD_Practitioner_Base or $SD_PractitionerRole_Base or $SD_Organization_Provider)
* title = "Visit Composition" (exactly)
// * event ^slicing.discriminator.type = #pattern
// * event ^slicing.discriminator.path = "code"
// * event ^slicing.rules = #open
* event 1..
// * event contains
//     visit 1..
// * event[visit].code from $encounterClassVS (required) //discriminator
// * event[visit].code 1..1
//   * coding 1..1
// * event[visit].period 1..
//   * start 1..
* section
  * code 1..
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    sectionAllergies 0..1 and
    sectionMedications 0..1 and
    sectionImmunizations 0..1 and
    sectionProblemList 0..1 and
    sectionPastIllness 0..1 and
    sectionProcedures 0..1 and
    sectionVitalSigns 0..1 and
    sectionDiagnosticTest 0..1 and
    sectionLaboratory 0..1 and
    sectionDocumentReference 0..1
    // specimen 0..1
* section[sectionAllergies]
  * ^short = "ประวัติแพ้ยาแพ้อาหาร"
  * title MS
  * title = "Allergy Intolerance"
  * code 1.. MS
  * code = $LNC#48765-2 "Allergies and adverse reactions Document"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      allergyIntolerance 0..* MS
  * entry[allergyIntolerance] only Reference($SD_AllergyIntolerance_Base)
* section[sectionMedications]
  * ^short = "สรุปรายการยาที่ได้รับในการรับบริการครั้งนั้น"
  * title MS
  * title = "Medication Summary"
  * code 1.. MS
  * code = $LNC#10160-0 "History of Medication use Narrative"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.discriminator[+].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      medicationRequest 0..* MS and
      medicationDispense 0..* MS and
      medicationAdministration 0..* MS and
      medicationStatement 0..* MS
  * entry[medicationRequest] only Reference($SD_MedicationRequest_Base)
  * entry[medicationDispense] only Reference($SD_MedicationDispense_Base)
  * entry[medicationAdministration] only Reference($SD_MedicationAdministration_Base)
  * entry[medicationStatement] only Reference($SD_MedicationStatement_Base)
* section[sectionImmunizations]
  * ^short = "ประวัติการรับวัคซีน"
  * title MS
  * title = "Immunization"
  * code 1.. MS
  * code = $LNC#11369-6 "History of Immunization Narrative"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      immunization 0..* MS
  * entry[immunization] only Reference(Immunization)
* section[sectionProblemList]
  * ^short = "สรุปรายการปัญหาของผู้รับบริการ"
  * title MS
  * title = "Problem list"
  * code 1.. MS
  * code = $LNC#11450-4 "Problem list - Reported"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      problemList 0..* MS
  * entry[problemList] only Reference($SD_Condition_Base)
* section[sectionPastIllness]
  * ^short = "ประวัติการเจ็บป่วยในอดีต"
  * title MS
  * title = "History of Past Illness"
  * code 1.. MS
  * code = $LNC#11348-0 "History of Past illness Narrative"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      pastIllness 0..* MS
  * entry[pastIllness] only Reference($SD_Condition_Base)
* section[sectionProcedures]
  * ^short = "ประวัติการผ่าตัด"
  * title MS
  * title = "Procedure"
  * code 1.. MS
  * code = $LNC#47519-4 "History of Procedures Document"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      procedure 0..* MS
  * entry[procedure] only Reference($SD_Procedure_Base)
* section[sectionVitalSigns]
  * ^short = "ผลการวัดสัญญาณชีพ"
  * title MS
  * title = "Vital Signs"
  * code 1.. MS
  * code = $LNC#8716-3 "Vital signs"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      vitalSigns 0..* MS
  * entry[vitalSigns] only Reference($SD_Observation_VitalBase)
* section[sectionDiagnosticTest]
  * ^short = "ผลการตรวจทางคลินิกอื่น ๆ เช่น EKG"
  * title MS
  * title = "Diagnostic Studies Result"
  * code 1.. MS
  * code = $LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.discriminator[+].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      results-observation 0..* MS and
      results-diagnosticReport 0..* MS
  * entry[results-observation] only Reference(Observation)
  * entry[results-diagnosticReport] only Reference($SD_DiagnosticReport_Base)
* section[sectionLaboratory]
  * ^short = "ผลการตรวจทางห้องปฏิบัติการ"
  * title MS
  * title = "Laboratory Test Result"
  * code 1.. MS
  * code = $LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.discriminator[+].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      results-observation 0..* MS and
      results-diagnosticReport 0..* MS
  * entry[results-observation] only Reference($SD_Observation_LabBase)
  * entry[results-diagnosticReport] only Reference($SD_DiagnosticReport_Base)
* section[sectionDocumentReference]
  * ^short = "ภาพสแกนเอกสารหรือภาพถ่ายทางการแพทย์"
  * title MS
  * title = "Scanned medical records or medical images"
  * code 1.. MS
  * code = $SCT#423876004 "Clinical document"
  * entry 1.. MS
    * ^slicing.discriminator[0].type = #profile
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.rules = #open
  * entry contains
      documentReference 0..* MS
  * entry[documentReference] only Reference(DocumentReference)
// * section[specimen]
//   * ^short = ""
//   * title MS
//   * title = "Specimen"
//   * code 1.. MS
//   * code = $LNC#66746-9
//   * entry 1.. MS
//   * entry only Reference($SD_Specimen_Base)


// ValueSet: HealthLinkVisitSectionCode
// Title: "Health Link visit section value set"
// * ^url = $visitSectionVS
// * include $LNC#48765-2 "Allergies and adverse reactions Document" //AllergyIntolerance
// * include $LNC#10160-0 "History of Medication use Narrative"      //MedicationStatement
// * include $LNC#11369-6 "History of Immunization Narrative"        //Immunization
// * include $LNC#11348-0 "History of Past illness Narrative"        //Condition encounter-diagnosis
// * include $LNC#11450-4 "Problem list Reported"                    //Condition problem-list-item
// * include $LNC#47519-4 "History of Procedures Document"           //Procedure
// * include $LNC#50398-7 "Narrative diagnostic report [Interpretation]" //DiagnosticReport
// * include $LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative" //Observation laboratory
// * include $LNC#8716-3 "Vital signs"                               //Observation vital-signs
// * include $LNC#55109-3 "Complications Document"                   //DocumentReference
// * include $LNC#66746-9 "Specimen type"                            //Specimen
// * include $LNC#72170-4 "Photographic image"                       //Media

