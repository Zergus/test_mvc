class Core.Controller

  @model: {}
  @view: null

  constructor: ->
    do @_observer
    @set.apply @, ['controller', @]
    @init.apply @, [@]

  init: ->
    #

  do: (action)->
    @actions[action].apply(@, arguments)

  get: (key)->
    return @[key]

  set: (key, value)->
    if @[key] isnt value
      old = @[key]
      @[key] = value
    @_notify {action: 'set', key, value, old}
    return @

  _notify: (data) ->
    data = $.extend true, {}, data
    $(document).trigger 'controller.set', {data}

  _observer: ->
    $(document).on 'controller.set', (e, info)=>
      data = info.data
      @observers?[data.key]?.apply @, []

  actions: {}