Class extends Declaration

Function toCode
	C_TEXT:C284($0)
	  // TODO superclass
	$0:="// Class "+This:C1470.id.name+"\n"
	
	If (This:C1470.superClass#Null:C1517)
		$0:="Class extends "+This:C1470.superClass.name+"\n"
	End if 
	
	$0:=$0+This:C1470.body.toCode()
	