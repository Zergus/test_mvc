class App.HistoryController extends Core.Controller

  init: ->
    @set 'array', []
    do @onGenerate
  
  onGenerate: ->
    $(document).on 'generated', (e, data)=>
      array = @get('array')
      item = new App.LinkModel().createRecord(data)
      array.push item
      @set('array', array)
  
  observers:
    array: ->
      do @view?.updateItems
