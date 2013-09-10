###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.north.Panel

North region. Header panel.
###
Ext.define 'Schedule.view.region.detail.Panel',
  extend: 'Ext.container.Container'

  region: 'east'

  baseCls: 'x-detail'

  width: 305
  
  border: "0 0 0 1"

  initComponent: ->
    @callParent arguments
