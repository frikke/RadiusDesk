Ext.define('Rd.model.mNas', {
    extend: 'Ext.data.Model',
    fields: [
         {name: 'id',           type: 'int'     },
         {name: 'nasname',      type: 'string'  },
         {name: 'shortname',    type: 'string'  },
         {name: 'owner',        type: 'string'  },
          'realms', 'tags',
         {name: 'available_to_siblings',  type: 'bool'},
         {name: 'update',       type: 'bool'},
         {name: 'delete',       type: 'bool'},
         {name: 'manage_tags',  type: 'bool'}
        ]
});
