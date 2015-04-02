Export Abistract
================

Register for AMD, eg [RequireJS](http://requirejs.org/). 

    if 'function' == typeof define and define.amd
      define -> Abistract

Export for CommonJS, eg [Node](http://goo.gl/Lf84YI). 

    else if 'object' == typeof module and module and module.exports
      module.exports = Abistract

Otherwise, add Abistract to global scope, eg `new window.Abistract()`. 

    else env.global.Abistract = Abistract



