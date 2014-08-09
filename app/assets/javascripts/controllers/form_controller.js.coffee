$.mockjax
  url: '/generate'
  responseTime: 750
  responseText:
    'ololo!'

class App.FormController extends Core.Controller
  actions:
    generate: ->
      @get 'origin'

      $.ajax
        url: '/generate'
        data: {}
        success: (response)->
          $(document).trigger 'generated', response
