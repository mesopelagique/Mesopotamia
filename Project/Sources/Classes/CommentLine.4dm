Class extends Node

Function toCode
	C_TEXT:C284($0)
	If (This:C1470.value#Null:C1517)
		$0:="//"+String:C10(This:C1470.value)+"\n"
	Else 
		$0:=This:C1470.code
	End if 