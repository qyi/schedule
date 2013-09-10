
Ext.Loader.setConfig
  enabled: true
  paths:
    "Deft": "packages/deft/src/js"
    "Schedule": "app"

Ext.syncRequire [
  'Ext.Component', 'Ext.ComponentManager', 'Ext.ComponentQuery',
  'Ext.tip.QuickTipManager', 'Deft.mixin.Injectable', 'Deft.mixin.Controllable'
]
