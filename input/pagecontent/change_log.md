### MoPH-PC-1 STU1 Release 1: เวอร์ชั่น 0.1.1

เวอร์ชั่นนี้เป็นการนำ MoPH-PC-1 ที่เคยเผยแพร่อยู่เดิมมาจัดเข้าสู่โครงสร้างโฟลเดอร์ใหม่ตามที่ HL7 กำหนด เพื่อให้สามารถใช้ฟีเจอร์ต่าง ๆ ของ IG Publishing tool ได้

- การ redirect ไปยังหน้าต่าง ๆ ของเว็บตามประเภทของ Accept ใน request header
- การเข้าถึงหน้า Version History
- การเข้าถึง IG package จาก FHIR IG registry

ในการนี้ มีความจำเป็นต้องปรับเปลี่ยนเนื้อหาของ IG บางประการ

1. เปลี่ยน canonical URL ของ IG จากเดิม `https://fhir-ig.sil-th.org/mophpc1/[content]` เป็น `https://fhir-ig.sil-th.org/th/mophpc1/[content]`
2. เปลี่ยนการเรียกใช้ extensions เป็นการเรียกจาก [SIL-TH Extensions registry](https://fhir-ig.sil-th.org/th/extensions/) แทนการนำมาใส่เป็นส่วนหนึ่งของ IG นี้ เพื่อให้ IG มีขนาดเล็กลง และไม่ซ้ำซ้อนกัน ซึ่งทำให้ canonical URL ของ extensions เหล่านี้มีการเปลี่ยนแปลงเช่นกัน (แต่เนื้อหายังเป็นเช่นเดิม)
3. เนื่องจากเหตุผลเดียวกัน ทำให้ canonical URL ของ terminology resources ต่าง ๆ มีการเปลี่ยนแปลงเช่นกัน เช่น จากเดิม `https://terms.sil-th.org/[resourceType]` จะเปลี่ยนเป็น `https://terms.sil-th.org/core/[resourceType]`
4. จำเป็นต้องเปลี่ยน FHIR version เป็น R4B เนื่องจากเป็น R4 แล้ว IG publisher compile ไม่สำเร็จ

นอกเหนือจากที่กล่าวข้างต้น เนื้อหาส่วนอื่นยังคงเดิม
