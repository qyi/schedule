###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.north.Panel

North region. Header panel.
###
Ext.define 'Schedule.view.region.workspace.Panel',
  extend: 'Ext.panel.Panel'
  inject: ['filters', 'list']

  layout: 'border'
  
  region: 'center'
  
  border: false

  initComponent: ->
    @items = [@filters, @list]
    @callParent arguments
