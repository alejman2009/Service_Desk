using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/Service_Admin'
service Service_Admin
{
    annotate Solicitudes with @restrict :
    [
        { grant : ['READ', 'CREATE', 'UPDATE', 'DELETE'], to : ['Admin'] }
    ];

    entity Solicitudes as
        projection on my.Solicitudes
        excluding {
            FechaModificacion,
            QuienCreo,
            QuienModifico
        };
}
