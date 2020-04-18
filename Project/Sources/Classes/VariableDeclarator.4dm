Class extends Node

Function toCode
	If (This:C1470.init#Null:C1517)
		$0:=This:C1470.id.toCode()+":="+This:C1470.init.toCode()
	Else 
		  // without type we cannot declare without init
		$0:=""
	End if 