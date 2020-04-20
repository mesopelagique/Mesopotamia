Class extends Expression

Function toCode
	C_TEXT:C284($0)
	$0:="New object(\""
	$0:=$0+This:C1470.toChildrenCode(";")
	$0:=$0+")"