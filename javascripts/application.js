var $ = require('jquery2');

window.onerror = function(message, source, lineno, colno, error) {
  $.post('/onerror', 
         {
           message: message,
           source:  source,
           lineno:  lineno,
           colno:   colno,
           error:   error
         }
        );
};
