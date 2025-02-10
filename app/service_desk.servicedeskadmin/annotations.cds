using ServiceDeskAdmin as service from '../../srv/serviceAdmin';
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
                Label : 'QuienCreo',
                Value : QuienCreo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'QuienModifico',
                Value : QuienModifico,
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
            Label : '{i18n>Comunicaciones}',
            ID : 'i18nComunicaciones',
            Target : 'comunicaciones/@UI.LineItem#i18nComunicaciones',
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
            Label : 'QuienCreo',
            Value : QuienCreo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QuienModifico',
            Value : QuienModifico,
        },
        {
            $Type : 'UI.DataField',
            Label : 'motivo',
            Value : motivo,
        },
    ],
);

annotate Service_Desk.Comunicaciones with @(
    UI.LineItem #i18nComunicaciones : [
    ]
);

annotate Service_Desk.Comunicaciones with @(
    UI.LineItem #i18nComunicaciones : [
    ]
);

annotate Service_Desk.Comunicaciones with @(
    UI.LineItem #Comunicaciones : [
    ]
);

