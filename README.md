# Mesopotamia

Convert Javascript to 4D code

## Current result

### javascript

```javascript
function nestTokens (tokens) {
    var nestedTokens = [6];
    var collector = nestedTokens;
    var sections = [];

    var token, section;
    for (var i = 0, numTokens = tokens.length; i < numTokens; ++i) {
      token = tokens[i];

      switch (token[0]) {
        case '#':
        case '^':
          collector.push(token);
          sections.push(token);
          collector = token[4] = [];
          break;
        case '/':
          section = sections.pop();
          section[5] = token[2];
          collector = sections.length > 0 ? sections[sections.length - 1][4] : nestedTokens;
          break;
        default:
          collector.push(token);
      }
    }
```

### 4D

```4d
Function nestTokens
	$tokens:=$1
	
	$nestedTokens:=New collection(6)
	$collector:=$nestedTokens
	$sections:=New collection()
	
	For ($i:=0$numTokens:=$tokens.length;$i<$numTokens;1)
		$token:=$tokens[i]
		Case of 
			: ($token[0]="#")
				  // TODO merge with next case 
			: ($token[0]="^")
				$collector.push($token)
				$sections.push($token)
				$collector:=$token[4]:=New collection()
				  // break
			: ($token[0]="/")
				$section:=$sections.pop()
				$section[5]:=$token[2]
				$collector:=Choose($sections.length>0;$sections[sections.length-1][4];$nestedTokens)  // TODO heck that alternate path could be executed even if false, if not do a If Else
				  // break
			Else 
				$collector.push($token)
		End case 
		
	End for 
	
	$0:=$nestedTokens
```


## How it works?

The result of Javascript [Babel parser (previously Babylon)](https://babeljs.io/) compiler is decoded into 4D classes.

[![class diagram](Documentation/classDiagram.svg)](https://mesopelagique.github.io/Mesopotamia/Documentation/classDiagram.svg)

Then 4D code is generated from the created node tree.
