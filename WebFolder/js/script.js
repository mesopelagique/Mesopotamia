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
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return decodeURIComponent(c.substring(name.length, c.length));
      }
    }
    return "";
  }
  function setCookie(cname, cvalue ) {
    document.cookie = cname + "=" + encodeURIComponent(cvalue)+ ";;path=/";
  }

window.onload = function() {
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/javascript");
    editor.session.on('change', function(delta) {
        var code=editor.getValue();
        document.cookie = setCookie("code", code);
        postChange(code);
    });

    // first event
    var code=editor.getValue();
    var cookie=getCookie("code")
    if (cookie != "") {
        code=cookie;
    }
    editor.setValue(code);

    hljs.initHighlightingOnLoad();
};
