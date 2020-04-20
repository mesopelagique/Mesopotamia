Class extends Declaration

Function toCode
	C_TEXT:C284($0)
	  // TODO superclass
	If (This:C1470.id.name#Null:C1517)
		$0:="// Class "+This:C1470.id.name+"\n"
	Else 
		$0:="// Class "+This:C1470.id.code+"\n"
	End if 
	
	If (This:C1470.superClass#Null:C1517)
		$0:="Class extends "+This:C1470.superClass.name+"\n"
	End if 
	
	$0:=$0+This:C1470.body.toCode()
	