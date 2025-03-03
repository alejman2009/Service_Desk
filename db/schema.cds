namespace Service_Desk;

using { managed } from '@sap/cds/common';

@odata.draft.bypass
entity Solicitudes : managed
{
    key ID : UUID;
    createdAt : Timestamp;
    modifiedAt : Timestamp;
    motivo : String(128);
    usuario : String(128);
    estado : Association to one Estado;
    tipo_solicitud : Association to one TiposDeSolicitud;
    persona_soporte : Association to one PersonasSoporte;
    urgencia : Association to one Urgencia;
    comunicaciones : Association to many Comunicaciones on comunicaciones.solicitud = $self;
}

@odata.draft.bypass
@cds.odata.valuelist
entity PersonasSoporte
{
    key ID : UUID;
    Apellido1 : String(128);
    Apellido2 : String(128);
    Nombre : String(128);
    solicitudes : Association to many Solicitudes on solicitudes.persona_soporte = $self;
}

@odata.draft.bypass
entity Comunicaciones
{
    key ID : UUID;
    timestamp : Timestamp;
    author : String(128);
    message : String(1024);
    key solicitud : Association to one Solicitudes;
}

@odata.draft.bypass
@cds.odata.valuelist
entity TiposDeSolicitud
{
    key ID : UUID;
    Nombre : String(128);
}

@odata.draft.bypass
@cds.odata.valuelist
entity Urgencia
{
    key ID : UUID;
    Nombre : String(128);
}

@odata.draft.bypass
entity Estado {
    key ID : String(2);
    Description : String(100);
}