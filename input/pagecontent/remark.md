### การระบุ meta.source

เนื่องจากในบางระบบ จำเป็นต้องมีการรวมข้อมูลจากหลายแหล่งที่มา เช่น โครงการแลกเปลี่ยนข้อมูลภาครัฐต่าง ๆ ดังนั้นทางโครงการอาจมีการขอให้นักพัฒนาระบบมีการใส่ข้อมูลแหล่งที่มาใน resource metadata (element [meta.source](https://www.hl7.org/fhir/resource.html#meta)) ด้วย

resource metadata นี้มี data type เป็น Uniform Resource Identifier (URI) ดังรายละเอียดในหน้า [uri](https://www.hl7.org/fhir/datatypes.html#uri) ซึ่งสามารถใส่ URI ได้หลายชนิด

สำหรับแนวทางการกำหนด URI ของโครงการ HealthLink สามารถดูได้ที่หน้า [ใส่ลิงค์ตรงนี้]

### การใส่ผลการตรวจอื่น ๆ

ใน IG นี้ได้กำหนด profile ของ Observation resource จำนวน 2 profile ได้แก่ [MoPH-PC Observation: Lab](StructureDefinition-mophpc-observation-lab-base.html) สำหรับการตรวจทางห้องปฏิบัติการ และ [MoPH-PC Observation: Vital](StructureDefinition-mophpc-observation-vital-base.html) สำหรับการบันทึกสัญญาณชีพ

ในกรณีที่ต้องการบันทึกผลการตรวจอื่น ๆ เช่น บันทึกการซักประวัติ, ผลการตรวจร่างกาย, ฯลฯ สามารถใช้ [Observation resource](https://www.hl7.org/fhir/observation.html) จาก FHIR core specifications ในการบันทึกได้โดยตรง คณะผู้จัดทำ IG นี้ยังมิได้มีการสร้าง profile เพื่อบันทึกเรื่องเหล่านี้โดยเฉพาะ
