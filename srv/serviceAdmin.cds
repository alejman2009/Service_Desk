using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/ServiceDeskAdmin'
service ServiceDeskAdmin
{
    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes;
}

annotate ServiceDeskAdmin with @requires :
[
    'authenticated-user',
    'Administrador'
];
