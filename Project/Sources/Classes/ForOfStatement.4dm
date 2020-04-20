Class extends Statement

Function toCode
	C_TEXT:C284($0)
	
	$0:="For each("+This:C1470.left.toCode()+";"+This:C1470.right.toCode()+")\n"
	C_TEXT:C284($line)
	For each ($line;Split string:C1554(This:C1470.body.toCode();"\n"))
		$0:=$0+"\t"+$line+"\n"
	End for each 
	$0:=$0+"End for each\n"