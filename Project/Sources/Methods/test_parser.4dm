//%attributes = {}


$transpiled:=Folder:C1567(fk resources folder:K87:11).file("test_result.json").getText()
$code:=Folder:C1567(fk resources folder:K87:11).file("test.js").getText("utf-8";Document with LF:K24:22)
  //$code:=Split string($code;"\n";sk trim spaces).join("")

$parser:=cs:C1710.Parser.new($transpiled;$code)

$file:=$parser.parse()
ASSERT:C1129(OB Instance of:C1731($file;cs:C1710.File))
$program:=$file.program
ASSERT:C1129(OB Instance of:C1731($program;cs:C1710.Program))

$function:=$program.body[0]
ASSERT:C1129(OB Instance of:C1731($function;cs:C1710.FunctionDeclaration))
$functionName:=$function.id.code
ASSERT:C1129($functionName="nestTokens")
For each ($parameter;$function.params)
	ASSERT:C1129(OB Instance of:C1731($parameter;cs:C1710.Identifier))
End for each 
$functionBody:=$function.body
ASSERT:C1129(OB Instance of:C1731($functionBody;cs:C1710.BlockStatement))

For each ($statementOrDeclaration;$functionBody.body)
	
	ASSERT:C1129(OB Instance of:C1731($statementOrDeclaration;cs:C1710.Statement) | OB Instance of:C1731($statementOrDeclaration;cs:C1710.Declaration))
	
End for each 

Folder:C1567(fk database folder:K87:14).folder("Project/Sources/Classes/").file("TestResult.4dm").setText($file.toCode())

