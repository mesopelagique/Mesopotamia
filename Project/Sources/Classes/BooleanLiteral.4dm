Class extends Literal

Function toCode
	C_TEXT:C284($0)
	If (This:C1470.value#Null:C1517)
		$0:=Choose:C955(This:C1470.value;"True";"False")
	Else 
		$0:=Choose:C955(This:C1470.code="true";"True";"False")
	End if 