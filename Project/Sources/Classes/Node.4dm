Class constructor
	C_OBJECT:C1216($1)
	This:C1470.type:=$1.type
	This:C1470.comments:=$1.comments
	This:C1470.start:=$1.start
	This:C1470.end:=$1.end
	This:C1470.loc:=$1.loc
	
	C_TEXT:C284($2)
	This:C1470.code:=Substring:C12($2;$1.start+1;$1.end-$1.start)
	
Function children
	C_COLLECTION:C1488($0)
	$0:=New collection:C1472()
	C_TEXT:C284($key)
	For each ($key;This:C1470)
		Case of 
			: (Value type:C1509(This:C1470[$key])=Is object:K8:27)
				
				If (OB Instance of:C1731(This:C1470[$key];cs:C1710.Node))
					$0.push(This:C1470[$key])
				End if 
				
			: (Value type:C1509(This:C1470[$key])=Is collection:K8:32)
				
				For each ($node;This:C1470[$key])
					C_VARIANT:C1683($node)
					If (Value type:C1509($node)=Is object:K8:27)
						
						If (OB Instance of:C1731($node;cs:C1710.Node))
							$0.push($node)
						End if 
					End if 
					
				End for each 
		End case 
	End for each 
	
Function toCode
	C_TEXT:C284($0)
	$0:=This:C1470.toChildrenCode()
	
Function toChildrenCode
	C_TEXT:C284($0;$sep;$text)
	C_VARIANT:C1683($1)
	$sep:=String:C10($1)
	$text:=""
	  // map to code XXX use map, collectio formula
	C_COLLECTION:C1488($map)
	$map:=New collection:C1472()
	C_OBJECT:C1216($node)
	For each ($node;This:C1470.children())
		$map.push($node.toCode())
	End for each 
	$0:=$map.join($sep)