###*
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.north.Panel

North region. Header panel.
###
Ext.define 'Schedule.view.region.header.Panel',
  extend: 'Ext.toolbar.Toolbar'

  region: 'north'

  baseCls: 'x-header'
  
  height: 64
  
  border: false
  
  padding: '0 0 4 0'

  initComponent: ->
    @items = [
      @getTools(),
      @getLogo(),
      @getLocation(),
      '->',
      @getUser(),
      @getFriend(),
      @getHelp(),
      @getLogout()
    ]

    @callParent arguments

  getTools: ->
    xtype: 'button'
    ui: 'header-tools'
    iconCls: 'x-header-tools-icon'

  getLogo: ->
    xtype: 'tbitem'
    height: 33
    width: 33
    baseCls: 'x-header-logo'
    margin: '0 0 0 10'

  getLocation: ->
    xtype: 'tbitem'
    baseCls: 'x-header-location'
    margin: '0 0 0 14'
    html: """
      <span>Расписание вузов</span>
      <div>БК-ЭК-12-9, ВТУ им. Щупкина</div>
    """

  getUser: ->
    xtype: 'tbitem'
    baseCls: 'x-header-user'
    margin: '0 14 0 0'
    height: 33
    html: """
      <div>Анна Наимудрейшая</div>
      <div>mankina@gmail.com</div>
    """

  getFriend: ->
    xtype: 'button'
    text: 'Пригласить друга'
    ui: 'header-nav'

  getHelp: ->
    xtype: 'button'
    text: 'Помощь'
    ui: 'header-nav'

  getLogout: ->
    xtype: 'button'
    text: 'Выход'
    ui: 'header-nav'
