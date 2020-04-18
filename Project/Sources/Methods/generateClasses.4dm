//%attributes = {}

$classFolder:=Folder:C1567(fk database folder:K87:14).folder("Project/Sources/Classes/")

$ast:=$1
If ($ast.type#Null:C1517)
	
	
	$file:=$classFolder.file($ast.type+".4dm")
	
	If (Not:C34($file.exists))
		
		$file.setText("Class extends Node")
		
	End if 
	
	
End if 


For each ($key;$ast)
	
	Case of 
		: (Value type:C1509($ast[$key])=Is object:K8:27)
			
			If ($ast[$key].type#Null:C1517)
				generateClasses ($ast[$key])
			End if 
			
		: (Value type:C1509($ast[$key])=Is collection:K8:32)
			
			For each ($node;$ast[$key])
				If (Value type:C1509($node)=Is object:K8:27)
					
					If ($node.type#Null:C1517)
						generateClasses ($node)
					End if 
				End if 
				
			End for each 
	End case 
	
End for each 