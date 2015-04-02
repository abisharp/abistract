App Scope
=========

Define variables and functions with application-level scope. These are only 
visible to code defined in ‘/src/’ and ‘/test/’. 




Version, licence and homepage notice
------------------------------------

Begin with a comment-block which will be preserved after compilation. The ‘!’ 
tells minifiers to preserve this comment. 

    ###! Abistract 0.0.1 //// MIT licence //// github.com/abisharp ////###
    I = 'Abistract'
    VERSION = '0.0.1'




Get environment variables
-------------------------

    env = { has:{} }

The ‘global object’ can usually be accessed by the `this` operator (or `@` in 
CoffeeScript), while in [global scope](http://goo.gl/EV1HSD). However, some 
environments, eg [Node](http://goo.gl/Lf84YI), provide a `global` namespace. 

    env.has.global = 'object' == typeof global
    env.has.window = ! ('object' != typeof window or (env.has.global && global.window))
    env.global = if env.has.global and ! env.has.window then global else @
    #console.log "env.has.global: #{env.has.global}  env.has.window: #{env.has.window}"




Define helper functions
-----------------------

#### `log()`
A handy shortcut for `console.log()`. Note [`bind()`](http://goo.gl/66ffgl). 

    log = console.log.bind console




#### `toType()`
To detect the difference between 'null', 'array', 'regexp' and 'object' types, 
we use [Angus Croll’s one-liner](http://goo.gl/WlpBEx) instead of JavaScript’s 
familiar `typeof` operator.

    toType = (x) ->
      ({}).toString.call(x).match(/\s([a-z|A-Z]+)/)[1].toLowerCase()




