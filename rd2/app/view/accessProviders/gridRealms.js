Ext.define('Rd.view.accessProviders.gridRealms' ,{
    extend:'Ext.grid.Panel',
    alias : 'widget.gridApRealms',
    stateful: true,
    stateId: 'StateGridApRealms',
    stateEvents:['groupclick','columnhide'],
    border: false,
    requires:   ['Rd.view.components.advCheckColumn'],
    ap_id:  null,
    columns: [
        {xtype: 'rownumberer', stateId: 'StateGridApRealms1'},
        { text: i18n('sRealm'),    dataIndex: 'name',      tdCls: 'gridTree', flex: 1},
        {
            xtype: 'advCheckColumn',
            text: i18n('sCreate'),
            dataIndex: 'create',
            renderer: function(value, meta, record) {
                var cssPrefix = Ext.baseCSSPrefix,
                cls = [cssPrefix + 'grid-checkheader'],
                disabled = false;
                if (value && disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-checked-disabled');
                } else if (value) {
                    cls.push(cssPrefix + 'grid-checkheader-checked');
                } else if (disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-disabled');
                }
                return '<div class="' + cls.join(' ') + '">&#160;</div>';
            }, stateId: 'StateGridApRealms2'
        },
        {
            xtype: 'advCheckColumn',
            text: i18n('sRead'),
            dataIndex: 'read',
            renderer: function(value, meta, record) {
                var cssPrefix = Ext.baseCSSPrefix,
                cls = [cssPrefix + 'grid-checkheader'],
                disabled = false;

                if (value && disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-checked-disabled');
                } else if (value) {
                    cls.push(cssPrefix + 'grid-checkheader-checked');
                } else if (disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-disabled');
                }
                return '<div class="' + cls.join(' ') + '">&#160;</div>';
            }, stateId: 'StateGridApRealms3'
        },
        {
            xtype: 'advCheckColumn',
            text: i18n('sUpdate'),
            dataIndex: 'update',
            renderer: function(value, meta, record) {
                var cssPrefix = Ext.baseCSSPrefix,
                cls = [cssPrefix + 'grid-checkheader'],
                disabled = false

                if (value && disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-checked-disabled');
                } else if (value) {
                    cls.push(cssPrefix + 'grid-checkheader-checked');
                } else if (disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-disabled');
                }
                return '<div class="' + cls.join(' ') + '">&#160;</div>';
            }, stateId: 'StateGridApRealms4'
        },
        {
            xtype: 'advCheckColumn',
            text: i18n('sDelete'),
            dataIndex: 'delete',
            renderer: function(value, meta, record) {
                var cssPrefix = Ext.baseCSSPrefix,
                cls = [cssPrefix + 'grid-checkheader'],
                disabled = false;
                if (value && disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-checked-disabled');
                } else if (value) {
                    cls.push(cssPrefix + 'grid-checkheader-checked');
                } else if (disabled) {
                    cls.push(cssPrefix + 'grid-checkheader-disabled');
                }
                return '<div class="' + cls.join(' ') + '">&#160;</div>';
            }, stateId: 'StateGridApRealms5'
        }
    ],
    tbar: [
        { xtype: 'button',  iconCls: 'b-reload', glyph: Rd.config.icnReload,    scale: 'large', itemId: 'reload',   tooltip:    i18n('sReload')}      
    ],
    bbar: [
        {   xtype: 'component', itemId: 'count',   tpl: i18n('sResult_count_{count}'),   style: 'margin-right:5px', cls: 'lblYfi'  }
    ],
    initComponent: function(){

        //We have to create this treeview's own store since it is unique to the AP
        var me = this;

        //Create a store specific to this Access Provider
        me.store = Ext.create(Ext.data.Store,{
            model: 'Rd.model.mApRealms',
            proxy: {
                type: 'ajax',
                format  : 'json',
                batchActions: true, 
                'url'   : '/cake2/rd_cake/realms/index_ap.json',
                extraParams: { 'ap_id' : me.ap_id },
                reader: {
                    type: 'json',
                    root: 'items',
                    messageProperty: 'message'
                },
                api: {
                    read    : '/cake2/rd_cake/realms/index_ap.json',
                    update  : '/cake2/rd_cake/realms/edit_ap.json'
                }
            },
            listeners: {
                load: function(store, records, successful) {
                    if(!successful){
                        Ext.ux.Toaster.msg(
                            'Error encountered',
                            store.getProxy().getReader().rawData.message.message,
                            Ext.ux.Constants.clsWarn,
                            Ext.ux.Constants.msgWarn
                        );
                    }else{
                        var count   = me.getStore().getTotalCount();
                        me.down('#count').update({count: count});
                    }   
                },
                update: function(store, records, success, options) {
                    store.sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                i18n('sUpdated_right'),
                                i18n('sRight_has_been_updated'),
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );   
                        },
                        failure: function(batch,options){
                            Ext.ux.Toaster.msg(
                                i18n('sProblems_updating_the_right'),
                                i18n('sRight_could_not_be_updated'),
                                Ext.ux.Constants.clsWarn,
                                Ext.ux.Constants.msgWarn
                            );
                        }
                    });
                },
                scope: this
            },
            autoLoad: false    
        });

        me.callParent(arguments);
    }
});
