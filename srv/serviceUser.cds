using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/ServiceDeskUser'
service ServiceDeskUser
{
    annotate Comunicaciones with @restrict :
    [
        { grant : [ '*' ], to : [ 'User' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    annotate Solicitudes with @restrict :
    [
        { grant : [ '*' ], to : [ 'User' ] },
        { grant : [ '*' ], to : [ 'authenticated-user' ] }
    ];

    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes;

    @odata.draft.enabled
    entity Comunicaciones as
        projection on my.Comunicaciones;
}

annotate ServiceDeskUser with @requires :
[
    'authenticated-user',
    'User'
];
