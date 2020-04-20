Class extends Declaration

Function toCode
	C_TEXT:C284($0)
	$0:="Function "+This:C1470.id.code+"\n"
	
	C_LONGINT:C283($cpt)
	$cpt:=1
	C_OBJECT:C1216($parameter)
	For each ($parameter;This:C1470.params)
		$0:=$0+"\t"+$parameter.toCode()+":=$"+String:C10($cpt)+"\n"
		$cpt:=$cpt+1
	End for each 
	$0:=$0+"\n"
	C_TEXT:C284($line)
	For each ($line;Split string:C1554(This:C1470.body.toCode();"\n"))
		$0:=$0+"\t"+$line+"\n"
	End for each 
	