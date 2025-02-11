using ServiceDeskUser as service from '../../srv/serviceUser';
annotate service.Solicitudes with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'createdAt',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'modifiedAt',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'motivo',
                Value : motivo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'usuario',
                Value : usuario,
            },
            {
                $Type : 'UI.DataField',
                Label : 'estado',
                Value : estado,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comunicaciones',
            ID : 'Comunicaciones',
            Target : 'comunicaciones/@UI.LineItem#Comunicaciones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'createdAt',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'modifiedAt',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'motivo',
            Value : motivo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'usuario',
            Value : usuario,
        },
        {
            $Type : 'UI.DataField',
            Label : 'estado',
            Value : estado,
        },
    ],
);

annotate service.Comunicaciones with @(
    UI.LineItem #Comunicaciones : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : solicitud_ID,
            Label : '{i18n>meStamp}',
        },
        {
            $Type : 'UI.DataField',
            Value : author,
            Label : '{i18n>Autor}',
        },
        {
            $Type : 'UI.DataField',
            Value : message,
            Label : '{i18n>Mensaje}',
        },
        {
            $Type : 'UI.DataField',
            Value : timestamp,
            Label : '{i18n>Timestamp}',
        },
    ]
);

