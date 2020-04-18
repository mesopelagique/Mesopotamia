Class extends Expression

Function toCode
	
	$0:=This:C1470.callee.toCode()+"("+
	
	If (This:C1470.arguments)#Null:C1517)
		$codes:=New collection:C1472()  // TODO factorize code to browse node list
		For each ($arg;This:C1470.arguments)
			$codes.push($arg.toCode())
		End for each 
		$0:=$0+$codes.join(";")
	End if 
	$0:=$0+")"