class App.HistoryView extends Core.View
  beforeRender: ->
    $('body').append('<ul class="results">')
    @root $('.results')
  
  updateItems: ->
    @root.html('')
    @root.append("<li>#{item}</li>") for item in @controller.get 'array'
