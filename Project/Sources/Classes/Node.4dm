

Class constructor
	This:C1470.type:=$1.type
	This:C1470.comments:=$1.comments
	This:C1470.start:=$1.start
	This:C1470.end:=$1.end
	This:C1470.loc:=$1.loc
	
	This:C1470.code:=Substring:C12($2;$1.start+1;$1.end-$1.start)
	
	
	
Function children()
	$0:=New collection:C1472()
	For each ($key;This:C1470)
		Case of 
			: (Value type:C1509(This:C1470[$key])=Is object:K8:27)
				
				If (OB Instance of:C1731(This:C1470[$key];cs:C1710.Node))
					$0.push(This:C1470[$key])
				End if 
				
			: (Value type:C1509(This:C1470[$key])=Is collection:K8:32)
				
				For each ($node;This:C1470[$key])
					If (Value type:C1509($node)=Is object:K8:27)
						
						If (OB Instance of:C1731($node;cs:C1710.Node))
							$0.push($node)
						End if 
					End if 
					
				End for each 
		End case 
	End for each 
	
Function toCode
	$0:=This:C1470.toChildrenCode()
	
Function toChildrenCode
	$text:=""
	For each ($node;This:C1470.children())
		$text:=$text+$node.toCode()
	End for each 
	$0:=$text
	
Function to4DCode()
	$text:=""
	$0:=$text