class App.HistoryController extends Core.Controller

  constructor: ->
    @set 'array', []
    do @onGenerate

  onGenerate: ->
    console.log 1
    $(document).on 'generated', (e, data)=>
      @get('array').push(data)

  actions: {}
    # generate: ->
      # console.log 'DOING!', @get 'link'  }
