Class extends Node

Function toCode
	C_TEXT:C284($0)
	If (This:C1470.init#Null:C1517)
		$0:=This:C1470.id.toCode()+":="+This:C1470.init.toCode()
	Else 
		$0:=This:C1470.id.toCode()
		  // without type we cannot declare without init sometimes,
	End if 