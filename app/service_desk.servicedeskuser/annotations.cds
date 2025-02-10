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
            {
                $Type : 'UI.DataField',
                Label : 'NombreTipo',
                Value : NombreTipo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NombreUrgencia',
                Value : NombreUrgencia,
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

