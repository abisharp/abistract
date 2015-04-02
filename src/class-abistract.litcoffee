Abistract
=========

Xx. 




Define the `Abistract` class
----------------------------

    class Abistract
      I: 'Abistract'




Allow custom `toString()` renderer
----------------------------------

      toString: (renderer) ->
        if renderer then renderer.call @ else "[object #{@I}]"




Define the constructor
----------------------

      constructor: (opt={}) ->

Set up the canvas element. 

        opt.canvas.style.backgroundColor = opt.bgcolor
        @ctx = opt.canvas.getContext '2d'
        @ctx.lineWidth = 5

Set up `shapes`, which will store all the Shape instances. 

        @shapes = []




Define public methods
---------------------

#### `addLine()`
Xx. 

      addLine: (startX, startY, endX, endY, color) ->

Create a new `Line` instance, pass it the 2D context, and set its start and 
end positions. 

        @shapes.push new Line
          ctx:    @ctx
          startX: startX
          startY: startY
          endX:   endX
          endY:   endY
          color:  color




#### `renderAll()`
Step through every `Shape` in `shapes`, rendering each one. 

      renderAll: ->

        shape.render() for shape in @shapes



