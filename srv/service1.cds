using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/Service_Admin'
service Service_Admin
{
    @odata.draft.enabled
    entity Solicitudes as
        projection on my.Solicitudes;
}

annotate Service_Admin with @requires :
[
    'authenticated-user'
];
