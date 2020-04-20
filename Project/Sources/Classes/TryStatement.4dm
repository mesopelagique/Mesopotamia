Class extends Statement

Function toCode
	C_TEXT:C284($0)
	$0:="/*TRY*/\n"+This:C1470.block.toCode()+"\n/*CATCH*/\nIf(False)\n"+This:C1470.handler.toCode()+"\nEnd if\n"