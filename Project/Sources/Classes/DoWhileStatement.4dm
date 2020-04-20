Class extends Statement

Function toCode
	C_TEXT:C284($0;$line)
	
	$0:="Repeat\n"
	
	For each ($line;Split string:C1554(This:C1470.body.toCode();"\n"))
		$0:=$0+"\t"+$line+"\n"
	End for each 
	
	$0:=$0+"Until ("+This:C1470.test.toCode()+")\n"