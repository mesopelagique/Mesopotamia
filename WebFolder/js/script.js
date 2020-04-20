"use strict";

var postChange = function(code) {
    var options={ast: true, code: false};
    try {
        var transpiled=Babel.transform(code, options);
        transpiled.code=code;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", window.location, true);
        xhr.setRequestHeader("Content-type", "application/json");
        xhr.onreadystatechange = function () {
            if (xhr.readyState == XMLHttpRequest.DONE && xhr.status === 200) {
                var responseText = xhr.responseText;

                document.getElementById("4dcode").innerText = responseText;
                document.querySelectorAll('pre code').forEach((block) => {
                    hljs.highlightBlock(block);
                });
            }
        }
        xhr.send(JSON.stringify(transpiled));
    } catch(error) {
        console.error(error);
    }
};

window.onload = function() {
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/javascript");
    editor.session.on('change', function(delta) {
        var code=editor.getValue();
        document.cookie = encodeURIComponent(code);
        postChange(code);
    });

    // first event
    var code=editor.getValue();
    if ( document.cookie ) {
        code=decodeURIComponent(document.cookie);
    }
    editor.setValue(code);

    hljs.initHighlightingOnLoad();
};
