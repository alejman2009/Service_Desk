using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/Service_User'
service Service_User
{
    @odata.draft.enabled
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

annotate Service_User with @requires :
[
    'authenticated-user'
];
