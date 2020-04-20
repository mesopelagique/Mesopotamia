Class extends Statement

Function toCode
	C_TEXT:C284($0;$test;$consequent)
	$test:=This:C1470.test.toCode()
	$0:="If("+$test+")\n"
	$consequent:=This:C1470.consequent.toCode()
	
	C_TEXT:C284($line)
	For each ($line;Split string:C1554($consequent;"\n"))
		$0:=$0+"  "+$line+"\n"
	End for each 
	
	$0:=$0+"End if"+"\n"