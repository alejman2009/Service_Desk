using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/ServiceDeskUser'
service ServiceDeskUser
{
    annotate Solicitudes with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'authenticated-user' ], where : 'QuienCreo = Authenticathed User' },
        { grant : [ 'WRITE' ], to : [ 'authenticated-user' ] }
    ];

    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes
        {
            *,
            tipo_solicitud.Nombre as NombreTipo,
            urgencia.Nombre as NombreUrgencia
        }
        excluding
        {
            tipo_solicitud,
            urgencia
        };
}

annotate ServiceDeskUser with @requires :
[
    'authenticated-user'
];
