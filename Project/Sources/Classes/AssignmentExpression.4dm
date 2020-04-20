Class extends Expression

Function toCode
	C_TEXT:C284($0;$op)
	
	$op:=Substring:C12(This:C1470.code;Length:C16(This:C1470.left.code)+1)
	Case of 
		: (Position:C15("+=";$op)=1)
			$0:=This:C1470.left.toCode()+":="+This:C1470.left.toCode()+"+"+This:C1470.right.toCode()
		: (Position:C15("-=";$op)=1)
			$0:=This:C1470.left.toCode()+":="+This:C1470.left.toCode()+"-"+This:C1470.right.toCode()
			  // ...
		Else 
			$0:=This:C1470.left.toCode()+":="+This:C1470.right.toCode()
	End case 