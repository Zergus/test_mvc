$.mockjax
  url: '/generate'
  responseTime: 750
  responseText:
    {
      id: 0
      a: 'ITSAFAAAAAAAAAAKE!'
    }
    

class App.FormController extends Core.Controller
  actions:
    generate: ->
      @get 'origin'

      $.ajax
        dataType: 'json'
        url: '/generate'
        data: {}
        success: (response)->
          $(document).trigger 'generated', response
