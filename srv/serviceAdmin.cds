using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/ServiceDeskAdmin'
service ServiceDeskAdmin
{
    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes;

    @odata.draft.enabled
    entity Comunicaciones as
        projection on my.Comunicaciones;

    @odata.draft.enabled
    entity PersonasSoporte as
        projection on my.PersonasSoporte;
}

annotate ServiceDeskAdmin with @requires :
[
    'authenticated-user',
    'Administrador'
];
