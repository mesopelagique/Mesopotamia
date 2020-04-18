Class extends Statement

Function toCode
	If (OB Instance of:C1731(This:C1470.expression;cs:C1710.Node))
		$0:=This:C1470.expression.toCode()
	Else 
		$0:=This:C1470.expression.left.toCode()+":="+This:C1470.expression.right.toCode()  // other op?
	End if 