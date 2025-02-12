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
            {
                $Type : 'UI.DataField',
                Value : urgencia.Nombre,
                Label : 'Urgencia',
            },
            {
                $Type : 'UI.DataField',
                Value : tipo_solicitud.Nombre,
                Label : 'Tipo_Solicitud',
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
            Target : 'comunicaciones/@UI.PresentationVariant#i18nComunicaciones',
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
    UI.LineItem #i18nComunicaciones : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : solicitud_ID,
            Label : 'solicitud_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : author,
            Label : 'author',
        },
        {
            $Type : 'UI.DataField',
            Value : message,
            Label : 'message',
        },
        {
            $Type : 'UI.DataField',
            Value : timestamp,
            Label : 'timestamp',
        },
    ],
    UI.PresentationVariant #i18nComunicaciones : {
        $Type : 'UI.PresentationVariantType',
        Visualizations : [
            '@UI.LineItem#i18nComunicaciones',
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comunicacion',
            ID : 'Comunicacion',
            Target : '@UI.FieldGroup#Comunicacion',
        },
    ],
    UI.FieldGroup #Comunicacion : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : solicitud_ID,
                Label : '{i18n>IdDeSolicitud}',
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
        ],
    },
);

annotate service.Urgencia with {
    Nombre @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Urgencia',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Nombre,
                    ValueListProperty : 'Nombre',
                },
            ],
            Label : 'Urgencia_help',
        },
        Common.ValueListWithFixedValues : true
)};

