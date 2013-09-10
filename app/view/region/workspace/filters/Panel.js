/**
@author Andrey Linko <su2ny@mail.ru>
@class Krypton.core.view.region.north.Panel

North region. Header panel.
*/


(function() {
  Ext.define('Schedule.view.region.workspace.filters.Panel', {
    extend: 'Ext.panel.Panel',
    region: 'west',
    baseCls: 'x-filters',
    width: 178,
    border: false,
    initComponent: function() {
      return this.callParent(arguments);
    }
  });

}).call(this);
