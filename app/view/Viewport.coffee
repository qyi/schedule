###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.Viewport

Viewport. Render application.
Has five regions: header, tools, center, control, workspace
###
Ext.define 'Schedule.view.Viewport',
  extend: 'Ext.container.Viewport'
  #inject: [ 'header', 'tools', 'center', 'workspace', 'control' ]
  inject: ['header', 'navigation', 'workspace', 'detail']

  layout: 'border'

  initComponent: ->
    Ext.state.Manager.setProvider Ext.create 'Ext.state.LocalStorageProvider'
    @items = [@header, @navigation, @workspace, @detail]
    @callParent(arguments)
