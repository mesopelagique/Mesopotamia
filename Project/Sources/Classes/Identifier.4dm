Class extends Node

Function toCode
	$0:="$"+This:C1470.code  // This.value
	
	If (This:C1470.trailingComments#Null:C1517)
		$0:=$0+This:C1470.trailingComments.toCode()
	End if 
	