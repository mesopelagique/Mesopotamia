Class extends Expression

Function toCode
	$op:=Substring:C12(This:C1470.code;Length:C16(This:C1470.left.code)+1;Length:C16(This:C1470.code)-Length:C16(This:C1470.right.code)-Length:C16(This:C1470.left.code))
	
	$0:=This:C1470.left.toCode()+$op+This:C1470.right.toCode()