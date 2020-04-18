Class extends Literal

Function toCode
	$0:=Super:C1706.toCode()
	
	If (Position:C15("'";$0)=1)
		$0:="\""+Substring:C12($0;2;Length:C16($0)-2)+"\""
	End if 
	
	