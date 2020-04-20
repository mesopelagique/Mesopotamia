Class extends Statement

Function toCode
	C_TEXT:C284($0)
	$0:="Case of\n"
	C_TEXT:C284($var)
	$var:=This:C1470.discriminant.toCode()
	
	C_OBJECT:C1216($case)
	For each ($case;This:C1470.cases)
		If ($case.test=Null:C1517)
			$0:=$0+"Else\n"
		Else 
			$0:=$0+":("+$var+"="+$case.test.toCode()+")\n"
		End if 
		If ($case.consequent.length=0)
			$0:=$0+"// TODO merge with next case \n"
		Else 
			C_OBJECT:C1216($consequent)
			For each ($consequent;$case.consequent)
				C_TEXT:C284($line)
				For each ($line;Split string:C1554($consequent.toCode();"\n"))
					$0:=$0+"  "+$line+"\n"
				End for each 
			End for each 
		End if 
	End for each 
	$0:=$0+"End case\n"