Profile: MophPcEncounterBase
Parent: Encounter
Id: mophpc-encounter-base
Title: "MoPH-PC Encounter"
Description: "การรับบริการสุขภาพ"
* ^url = $SD_Encounter_Base
* ^status = #active
* extension contains
    $EX_TH_EncounterPatientLocationType named patientLocationType 0..1 MS and
    $EX_TH_EncounterServiceHour named serviceHour 0..1 MS and
    $EX_TH_EncounterServiceTypeTH named serviceTypeTH 0..1 MS
* identifier MS
* status MS
* class MS
* priority MS
* priority.coding ^slicing.discriminator[0].type = #value
* priority.coding ^slicing.discriminator[=].path = "system"
* priority.coding ^slicing.rules = #open
* priority.coding contains
    hl7 0..1 MS and
    thccAccident 0..1 MS
* priority.coding[hl7] from $VS_HL7_Priority (extensible)
* priority.coding[hl7].system 1..
* priority.coding[hl7].system = $CS_HL7_Priority (exactly)
* priority.coding[hl7].code 1..
* priority.coding[thccAccident] from $VS_THCC_AccidentPriority (extensible)
* priority.coding[thccAccident].system 1..
* priority.coding[thccAccident].system = $CS_THCC_AccidentPriority (exactly)
* priority.coding[thccAccident].code 1..
* subject MS
* subject only Reference($SD_Patient_Base or Group)
* basedOn MS
* participant MS
* participant.type.coding ^slicing.discriminator[0].type = #value
* participant.type.coding ^slicing.discriminator[=].path = "system"
* participant.type.coding ^slicing.rules = #open
* participant.type.coding contains
    hl7 0..1 and
    43plus 0..1 MS
* participant.type.coding[hl7] from $VS_HL7_ParticipantType (extensible)
* participant.type.coding[hl7].system 1..
* participant.type.coding[hl7].system = $CS_HL7_ParticipantType (exactly)
* participant.type.coding[hl7].code 1..
* participant.type.coding[43plus] from $VS_Meta_ParticipantType (extensible)
* participant.type.coding[43plus].system 1..
* participant.type.coding[43plus].system = $CS_Meta_ParticipantType (exactly)
* participant.type.coding[43plus].code 1..
* participant.actor only Reference($SD_Practitioner_Base)
* actualPeriod MS
* length MS
* reason MS
* reason.value.concept.coding ^slicing.discriminator.type = #value
* reason.value.concept.coding ^slicing.discriminator.path = "system"
* reason.value.concept.coding ^slicing.rules = #open
* reason.value.concept.coding contains
    snomed 0..1 MS
* reason.value.concept.coding[snomed] from $VS_SNOMED_INT (extensible)
* reason.value.concept.coding[snomed].system 1..
* reason.value.concept.coding[snomed].system = $SCT (exactly)
* reason.value.concept.coding[snomed].code 1..
* diagnosis MS
  * condition MS
  * condition only CodeableReference($SD_Condition_Base)
  * use.coding ^slicing.discriminator.type = #value
  * use.coding ^slicing.discriminator.path = "system"
  * use.coding ^slicing.rules = #open
  * use.coding contains
      hl7 0..1 MS and
      43plus 0..1 MS and
      addition 0..1
  * use.coding[hl7] from $VS_HL7_DiagRole (extensible)
  * use.coding[hl7].system = $CS_HL7_DiagRole
  * use.coding[43plus] from $VS_43Plus_EncounterDiagnosisRole (extensible)
  * use.coding[43plus].system = $CS_43Plus_EncounterDiagnosisRole
  * use.coding[addition] from $VS_Meta_ExtendedHL7DiagnosisRole (extensible)
  * use.coding[addition].system = $CS_Meta_ExtendedHL7DiagnosisRole
* admission MS
* admission.extension contains
    $EX_TH_EncounterDischargeStatus named dischargeStatus 0..1 MS and
    $EX_TH_EncounterDischargeInstruction named dischargeInstruction  0..1 MS
* admission.origin MS
* admission.origin only Reference($SD_Organization_Provider)
* admission.admitSource MS
* admission.admitSource.coding ^slicing.discriminator[0].type = #value
* admission.admitSource.coding ^slicing.discriminator[=].path = "system"
* admission.admitSource.coding ^slicing.rules = #open
* admission.admitSource.coding contains
    hl7 0..1 and
    thcc 0..1 MS and
    thccAccident 0..1 MS
* admission.admitSource.coding[hl7] from $VS_HL7_AdmitSource (extensible)
* admission.admitSource.coding[hl7].system 1..
* admission.admitSource.coding[hl7].system = $CS_HL7_AdmitSource (exactly)
* admission.admitSource.coding[hl7].code 1..
* admission.admitSource.coding[thcc] from $VS_THCC_AdmitSource (extensible)
* admission.admitSource.coding[thcc].system 1..
* admission.admitSource.coding[thcc].system = $CS_THCC_AdmitSource (exactly)
* admission.admitSource.coding[thcc].code 1..
* admission.admitSource.coding[thccAccident] from $VS_THCC_AccidentAdmitSource (extensible)
* admission.admitSource.coding[thccAccident].system 1..
* admission.admitSource.coding[thccAccident].system = $CS_THCC_AccidentAdmitSource (exactly)
* admission.admitSource.coding[thccAccident].code 1..
* admission.destination only Reference($SD_Organization_Provider)
* location MS
  * extension contains
    $EX_TH_EncounterServiceLocationType named serviceLocationType 0..1 MS
  * location MS
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
* serviceProvider.extension contains
    $EX_TH_EncounterProviderType named providerType 0..1 MS
