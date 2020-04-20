Class constructor
	C_TEXT:C284($1;$2)
	This:C1470.transpiled:=$1
	This:C1470.code:=$2
	
Function parse
	C_OBJECT:C1216($0;$transpiled)
	$transpiled:=JSON Parse:C1218(This:C1470.transpiled)
	If (This:C1470.code=Null:C1517)
		This:C1470.code:=$transpiled.code
		$transpiled:=$transpiled.ast
	End if 
	$0:=This:C1470.parseNode($transpiled)
	
Function parseNode
	C_OBJECT:C1216($0;$1;$node)
	$node:=$1
	$0:=cs:C1710[$node.type].new($node;This:C1470.code)
	
	  //$0.children:=New collection()
	C_TEXT:C284($key)
	For each ($key;$node)
		
		Case of 
			: (Value type:C1509($node[$key])=Is object:K8:27)
				
				If (Length:C16(String:C10($node[$key].type))>0)
					
					$0[$key]:=This:C1470.parseNode($node[$key])
					
				End if 
				
			: (Value type:C1509($node[$key])=Is collection:K8:32)
				
				$0[$key]:=New collection:C1472()
				C_VARIANT:C1683($child)
				For each ($child;$node[$key])
					If (Value type:C1509($child)=Is object:K8:27)
						If (Length:C16(String:C10($child.type))>0)
							
							$0[$key].push(This:C1470.parseNode($child))
							
						End if 
					End if 
				End for each 
				
			Else 
				  // ignore
		End case 
		
	End for each 