var u = require('umbrellajs');

window.onerror = function(message, source, lineno, colno, error) {
  u.ajax('/onerror',
         {
           method: 'POST',
           body:   {
             message: message,
             source:  source,
             lineno:  lineno,
             colno:   colno,
             error:   error,
             uri:     location.href
           }
         }
        );
};

syntax;
