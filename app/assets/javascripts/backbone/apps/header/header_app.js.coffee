@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  HeaderApp.startWithParent = false

  API =
    listHeader: ->
      HeaderApp.List.Controller.listHeader()

  HeaderApp.on "start", ->
    API.listHeader()