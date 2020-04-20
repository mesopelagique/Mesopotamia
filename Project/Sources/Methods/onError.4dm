//%attributes = {}
ARRAY LONGINT:C221($tLon_codes;0x0000)
ARRAY TEXT:C222($tTxt_components;0x0000)
ARRAY TEXT:C222($tTxt_errors;0x0000)
GET LAST ERROR STACK:C1015($tLon_codes;$tTxt_components;$tTxt_errors)

If (Size of array:C274($tTxt_errors)>0)
	
	If (Length:C16($tTxt_errors{1})>0)
		
		If (Position:C15($tTxt_errors{1};ERROR FORMULA)=0)\
			 & (Length:C16(ERROR FORMULA)#0)
			
			OB SET:C1220(<>errors;"description";$tTxt_errors{1})
			
		End if 
	End if 
End if 