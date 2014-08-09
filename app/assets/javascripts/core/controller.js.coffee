class Core.Controller
  data = {}

  @model: {}
  @view: null

  controller: ->
    do @_observer

  do: (action)->
    @actions[action].apply(@, arguments)

  get: (key)->
    return data[key]

  set: (key, value)->
    if data[key] isnt value
      data[key] = value
      @notify.apply @, {type: 'set', var: data[key]}
    return @

  notify: (c, opt)->
    $(document).trigger("controller.#{opt.type}", {controller: c, var: opt.var}) if opt

  _observer: ->
    $(document).on 'controller.set', (e, data)=>
      @observer data

  observer: (data)->
    #

  actions: {
  }