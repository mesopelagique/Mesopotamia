Class extends Expression

Function toCode
	C_TEXT:C284($0)
	$0:="Choose("+This:C1470.test.toCode()+";"+This:C1470.consequent.toCode()+";"+This:C1470.alternate.toCode()+") // TODO heck that alternate path could be executed even if false, if not do a If Else"