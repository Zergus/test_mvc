class Core.View
  model: null
  el: null

  @beforeRender:->
    #

  constructor: (@controller)->
    do @beforeRender

  root: (el) ->
    console.log 'root set'
    if el
      @root = el
      @_afterRoot()
    @root

  _afterRoot: ->
    do @_onclick
    do @_renderer

  append: (child) ->
    $child = $(child)
    unless @root.find($child).length
      @root.append $child

  _onclick: ->
    @root.on 'click', (e) =>
      unless $(e.target) is @root
        @click(e)

  _renderer: ->
    do @render

  render: ->
    #
  
  click: ->
    #