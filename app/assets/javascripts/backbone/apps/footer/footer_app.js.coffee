@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  FooterApp.startWithParent = false

  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  FooterApp.on "start", ->
    API.showFooter()