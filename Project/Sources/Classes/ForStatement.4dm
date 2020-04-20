Class extends Statement

Function toCode
	C_TEXT:C284($0)
	$0:="For("+This:C1470.init.toCode()+";"+This:C1470.test.toCode()+";"+This:C1470.update.toCode()+")\n"
	
	$0:=$0+This:C1470.body.toCode()+"\n"
	
	$0:=$0+"End for\n"