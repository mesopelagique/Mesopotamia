Class extends Statement

Function toCode
	$0:="If("+This:C1470.test.toCode()+")\n"
	$0:=$0+This:C1470.consequent.toCode()+"\n"
	$0:=$0+"End if"