class App.HistoryController extends Core.Controller

  init: ->
    @set 'array', []
    do @onGenerate
  
  onGenerate: ->
    $(document).on 'generated', (e, data)=>
      array = @get('array')
      array.push data
      @set('array', array)
  
  observers:
    array: ->
      do @view?.updateItems
