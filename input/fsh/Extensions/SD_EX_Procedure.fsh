Extension: EX_TH_ProcedureProcedureType
Id: ex-procedure-procedure-type
Title: "Procedure: Procedure Type"
Description: "รหัสชนิดของหัตถการ"
* ^url = $EX_TH_ProcedureProcedureType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Procedure"
* . 0..*
* . ^short = "รหัสชนิดของหัตถการ"
* . ^definition = "รหัสชนิดของหัตถการ"
* url = $EX_TH_ProcedureProcedureType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ProcedureType (extensible)


