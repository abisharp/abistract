Line
====

A straight line between two points. 




Define the `Line` class
-----------------------

    class Line
      I: 'Line'




Allow custom `toString()` renderer
----------------------------------

      toString: (renderer) ->
        if renderer then renderer.call @ else "[object #{@I}]"




Define the constructor
----------------------

      constructor: (opt={}) ->
        @ctx    = opt.ctx
        @startX = opt.startX
        @startY = opt.startY
        @endX   = opt.endX
        @endY   = opt.endY
        @color  = opt.color




Define public methods
---------------------

#### `render()`
Xx. 

      render: () ->

        @ctx.beginPath()

        @ctx.strokeStyle = @color

        # The line will begin at the given X co-ordinate and Y co-ordinate.
        @ctx.moveTo @startX, @startY

        # The line will draw to the X co-ordinate point and its new Y co-ordinate point.
        @ctx.lineTo @endX, @endY

        # This will set the line to be drawn.
        @ctx.stroke()


