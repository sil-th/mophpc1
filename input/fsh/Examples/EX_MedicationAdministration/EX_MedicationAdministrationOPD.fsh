Instance: medicationadministration-opd-amoxicillin
InstanceOf: $SD_MedicationAdministration_Base
Title: "ตัวอย่าง MedicationAdministration: การบริหารยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงการบริหารยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* status = #completed
* medication
  * concept
    * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
    * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
    * text = "Amoxycillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd2)
* occurencePeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-08T12:30:02+07:00"
* request = Reference(MedicationRequest/medicationrequest-opd-amoxicillin)
