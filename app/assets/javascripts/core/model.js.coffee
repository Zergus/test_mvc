class Core.Model
  store = {}

  constructor: (data) ->
    #

  get: (key)->
    return store[key]

  set: (key, value)->
    store[key] = value
    return @

  createRecord: (data) ->
    @set data.id, ($.extend true, {}, data)
    return @get data.id