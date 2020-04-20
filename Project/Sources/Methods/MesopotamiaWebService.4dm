//%attributes = {}
C_BOOLEAN:C305($0)
C_TEXT:C284($1;$name)
$name:=$1
C_TEXT:C284($2;$method)
$method:=$2

C_TEXT:C284($output;$method)

Case of 
	: (Position:C15("GET";$method)=1)
		  // Just send the template
		$output:=Folder:C1567(fk resources folder:K87:11).file("editor.html").getText()
		WEB SEND TEXT:C677($output)
		$0:=True:C214
		
	: (Position:C15("POST";$method)=1)
		  // Convert posted JSON from body
		WEB GET HTTP BODY:C814($output)
		
		C_OBJECT:C1216($parser;$file)
		$parser:=cs:C1710.Parser.new($output)
		$method:=Method called on error:C704
		ON ERR CALL:C155("onError")
		<>errors:=New object:C1471()
		$file:=$parser.parse()
		$output:=$file.toCode()
		ON ERR CALL:C155($method)
		If (Length:C16($output)=0)
			If (Length:C16(<>errors.description)>0)
				$output:="'"+<>errors.description+"'"
			Else 
				$output:="'Nothing to display: maybe failing to parse'"
			End if 
		End if 
		WEB SEND TEXT:C677($output)
		$0:=True:C214
		
	Else 
		
		WEB SEND TEXT:C677("Unknown method")
		$0:=False:C215
		
End case 

