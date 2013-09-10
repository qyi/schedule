###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.east.Panel

East region. Tools panel.
###
Ext.define "Schedule.view.region.navigation.Panel",
  extend: "Ext.toolbar.Toolbar"

  region: "west"

  baseCls: 'x-navigation'
  
  width: 56
  
  border: false
  
  vertical: true

  initComponent: ->
    @items = [
      {
        xtype: 'button'
        ui: 'navigation'
        iconCls: 'x-navigation-one-icon'
      },
      {
        xtype: 'tbseparator'
      },
      {
        xtype: 'button'
        ui: 'navigation'
        iconCls: 'x-navigation-two-icon'
      },
      {
        xtype: 'tbseparator'
      },
      {
        xtype: 'button'
        ui: 'navigation'
        iconCls: 'x-navigation-three-icon'
      },
      {
        xtype: 'tbseparator'
      },
      {
        xtype: 'button'
        ui: 'navigation'
        iconCls: 'x-navigation-four-icon'
      },
      {
        xtype: 'tbseparator'
      }
    ]
    @callParent(arguments)
