Ext.define "Schedule.Application",
  extend: "Deft.mvc.Application"
  requires: [
    "Schedule.view.region.header.Panel"
    "Schedule.view.region.navigation.Panel"
    "Schedule.view.region.detail.Panel"
    "Schedule.view.region.workspace.filters.Panel"
    "Schedule.view.region.workspace.list.Panel"
    "Schedule.view.region.workspace.Panel"
    "Schedule.view.Viewport"
  ]

  init: ->
    Deft.Injector.configure
      header: "Schedule.view.region.header.Panel"
      navigation: "Schedule.view.region.navigation.Panel"
      detail: "Schedule.view.region.detail.Panel"
      filters: "Schedule.view.region.workspace.filters.Panel"
      list: "Schedule.view.region.workspace.list.Panel"
      workspace: "Schedule.view.region.workspace.Panel"

    #Ext.util.History.init()
    #Ext.tip.QuickTipManager.init()
    Ext.create "Schedule.view.Viewport"
