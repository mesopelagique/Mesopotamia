Class extends Node

Function toCode
	C_TEXT:C284($0)
	If (String:C10(This:C1470.kind)="constructor")
		$0:="Class constructor\n"
	Else 
		If (This:C1470.key.name#Null:C1517)
			$0:="Function "+This:C1470.key.name+"\n"
		Else 
			If (This:C1470.key.code="constructor")
				$0:="Class constructor\n"
			Else 
				$0:="Function "+This:C1470.key.code+"\n"
			End if 
		End if 
	End if 
	
	C_LONGINT:C283($cpt)
	$cpt:=1
	If (This:C1470.params#Null:C1517)
		C_OBJECT:C1216($parameter)
		For each ($parameter;This:C1470.params)
			$0:=$0+"\t"+$parameter.toCode()+":=$"+String:C10($cpt)+"\n"
			$cpt:=$cpt+1
		End for each 
	End if 
	$0:=$0+"\n"
	C_TEXT:C284($line)
	For each ($line;Split string:C1554(This:C1470.body.toCode();"\n"))
		$0:=$0+"\t"+$line+"\n"
	End for each 
	