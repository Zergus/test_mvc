class App.HistoryView extends Core.View
  beforeRender: ->
    $('body').append('<ul class="results">')
    @root $('.results')
  
  updateItems: ->
    @root.html('')
    @root.append("<li>#{item.a}</li>") for item in @controller.get 'array'
