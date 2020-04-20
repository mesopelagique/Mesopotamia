Class extends Node

Function toCode
	C_TEXT:C284($0)
	C_COLLECTION:C1488($stripComments)
	C_OBJECT:C1216($comment)
	$stripComments:=New collection:C1472()  // there is duplicate comments, remove somes (blank lines will be stripped
	For each ($comment;This:C1470.comments)
		Case of 
			: ($comment.start=0)
				$stripComments.push($comment)
			: ($stripComments.length>0)
				If (($stripComments[$stripComments.length-1].end+1)=$comment.start)
					$stripComments.push($comment)
				End if 
		End case 
	End for each 
	This:C1470.comments:=$stripComments
	$0:=This:C1470.toChildrenCode("\n")