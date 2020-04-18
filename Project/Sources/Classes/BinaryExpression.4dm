Class extends Expression

Function toCode
	$op:=This:C1470.operator  // Substring(This.code;Length(This.left.code)+1;Length(This.code)-Length(This.right.code)-Length(This.left.code))
	Case of 
		: ((This:C1470.operator="==") | (This:C1470.operator="==="))
			$op:="="
		: ((This:C1470.operator:="!=") | (This:C1470.operator="!=="))
			$op:="#"
	End case 
	$0:=This:C1470.left.toCode()+$op+This:C1470.right.toCode()