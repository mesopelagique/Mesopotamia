Class extends Expression

Function toCode
	C_TEXT:C284($0)
	Case of 
		: (Position:C15("++";This:C1470.code)=1)
			$0:="1"
		: (Position:C15("++";This:C1470.code)>0)
			$0:="1"
		Else   // to implement
			$0:="/*"+This:C1470.code+"*/"
	End case 