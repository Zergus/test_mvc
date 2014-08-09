class App.FormView extends Core.View
  beforeRender: ->
    @root $('body')
  
  render: ->
    @root.append('<input>')
    @root.append('<button>GENERATE!</button>')

  click: (e) ->
    if $(e.target).is('button')
      origin = @root.find('input').val()
      @controller.set('origin', origin).do 'generate'