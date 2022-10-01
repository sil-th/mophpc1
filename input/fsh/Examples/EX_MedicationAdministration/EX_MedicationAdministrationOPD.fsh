Instance: medicationadministration-opd-amoxicillin
InstanceOf: $SD_MedicationAdministration_Base
Usage: #example
* status = #completed
* medicationReference = Reference(Medication/medication-opd-amoxicillin) "Amoxicillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* context = Reference(Encounter/encounter-opd2)
* effectivePeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-08T12:30:02+07:00"
* request = Reference(MedicationRequest/medicationrequest-opd-amoxicillin)
