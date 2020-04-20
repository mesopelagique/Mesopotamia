Class extends Expression

Function toCode
	C_TEXT:C284($0;$op)
	$op:=This:C1470.operator
	Case of 
		: (This:C1470.operator="&&")
			$op:="&"
		: (This:C1470.operator="||")
			$op:="|"
	End case 
	$0:=This:C1470.left.toCode()+$op+This:C1470.right.toCode()