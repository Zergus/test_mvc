@Core = {}

class @App
  constructor: ->
    @formController = new App.FormController
    @historyController = new App.HistoryController
    @formView = new App.FormView(@formController)
