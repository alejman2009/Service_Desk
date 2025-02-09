using Service_Admin as service from '../../srv/service_admin';
annotate service.Solicitudes with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'FechaCreacion',
                Value : FechaCreacion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UsuarioSolicitante',
                Value : UsuarioSolicitante,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Estado',
                Value : Estado,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Motivo',
                Value : Motivo,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'FechaCreacion',
            Value : FechaCreacion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UsuarioSolicitante',
            Value : UsuarioSolicitante,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Estado',
            Value : Estado,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Motivo',
            Value : Motivo,
        },
    ],
);

annotate Service_Desk.Comunicaciones with @(
    UI.LineItem #i18nComunicaciones : [
    ]
);

