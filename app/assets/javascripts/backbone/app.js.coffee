@Demo = do (Backbone, Marionette) ->
  App = new Marionette.Application

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("FooterApp").start()
    App.module("HeaderApp").start()

  App.on "before:start", (options) ->
    @currentUser = App.request "set:current:user", options.currentUser

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start()
      
  App.reqres.setHandler "get:current:user", ->
    App.currentUser

  App