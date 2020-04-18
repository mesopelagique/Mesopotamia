//%attributes = {}


$transpiled:=Folder:C1567(fk resources folder:K87:11).file("test_result.json").getText()
$code:=Folder:C1567(fk resources folder:K87:11).file("test.js").getText("utf-8";Document with LF:K24:22)
  //$code:=Split string($code;"\n";sk trim spaces).join("")

$parser:=cs:C1710.Parser.new($transpiled;$code)

$node:=$parser.parse()

Folder:C1567(fk resources folder:K87:11).file("test_toCode.js").setText($node.toCode())
Folder:C1567(fk resources folder:K87:11).file("test_to4DCode.js").setText($node.to4DCode())