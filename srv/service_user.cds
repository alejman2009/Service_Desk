using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/Service_User'
service Service_User
{
    annotate Solicitudes with @restrict :
    [
        { grant : [ 'READ', 'CREATE' ], to : [ 'authenticated-user' ] }
    ];

    entity Solicitudes as
        projection on my.Solicitudes
        {
            *
        }
        excluding
        {
            FechaModificacion,
            QuienCreo,
            QuienModifico,
            Urgencia
        };
}
