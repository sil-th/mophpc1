Extension: EX_TH_ConditionIsChronic
Id: ex-condition-is-chronic
Title: "Condition: Is Chronic"
Description: "สภาวะการป่วยต่อเนื่อง"
* ^url = $EX_TH_ConditionIsChronic
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Condition"
* . 0..*
* . ^short = "สภาวะการป่วยต่อเนื่อง"
* . ^definition = "สภาวะการป่วยต่อเนื่อง"
* url = $EX_TH_ConditionIsChronic (exactly)
* value[x] 1..
* value[x] only boolean