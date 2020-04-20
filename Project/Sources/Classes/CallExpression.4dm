Class extends Expression

Function toCode
	C_TEXT:C284($0)
	$0:=This:C1470.callee.toCode()+"("
	
	If (This:C1470.arguments#Null:C1517)
		C_COLLECTION:C1488($codes)
		$codes:=New collection:C1472()  // TODO factorize code to browse node list
		C_OBJECT:C1216($arg)
		For each ($arg;This:C1470.arguments)
			$codes.push($arg.toCode())
		End for each 
		$0:=$0+$codes.join(";")
	End if 
	$0:=$0+")"