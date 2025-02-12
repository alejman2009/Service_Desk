using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/ServiceDeskUser'
service ServiceDeskUser
{
    annotate Comunicaciones with @restrict :
    [
        { grant : [ '*' ], to : [ 'User' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    annotate Estado with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'User' ] },
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] }
    ];

    annotate PersonasSoporte with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'User' ] },
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] }
    ];

    annotate Solicitudes with @restrict :
    [
        { grant : [ '*' ], to : [ 'User' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    annotate TiposDeSolicitud with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'User' ] },
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] }
    ];

    annotate Urgencia with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'User' ] },
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] }
    ];

    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes;

    @odata.draft.enabled
    entity Comunicaciones as
        projection on my.Comunicaciones;

    @odata.draft.enabled
    entity PersonasSoporte as
        projection on my.PersonasSoporte;

    @odata.draft.enabled
    entity Urgencia as
        projection on my.Urgencia;

    @odata.draft.enabled
    entity TiposDeSolicitud as
        projection on my.TiposDeSolicitud;

    @odata.draft.enabled
    entity Estado as
        projection on my.Estado;
}

annotate ServiceDeskUser with @requires :
[
    'authenticated-user',
    'User'
];
