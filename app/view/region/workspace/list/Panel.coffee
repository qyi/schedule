###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.north.Panel

North region. Header panel.
###
Ext.define 'Schedule.view.region.workspace.list.Panel',
  extend: 'Ext.panel.Panel'

  region: 'center'

  border: false

  initComponent: ->
    @items = [
      html: 'lsdjfkljsdlf'
    ]

    @callParent arguments
