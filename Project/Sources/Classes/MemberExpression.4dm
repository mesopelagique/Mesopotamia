Class extends Expression

Function toCode
	C_TEXT:C284($0;$op)
	$op:=Substring:C12(This:C1470.code;Length:C16(This:C1470.object.code)+1)
	Case of 
		: ($op[[1]]="[")
			$0:=This:C1470.object.toCode()+"["+This:C1470.property.toCode()+"]"
		: ($op[[1]]=".")
			$0:=This:C1470.object.toCode()+"."+This:C1470.property.code
	End case 