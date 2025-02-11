namespace Service_Desk;

using { managed } from '@sap/cds/common';

entity Solicitudes : managed
{
    key ID : UUID;
    createdAt : Timestamp;
    modifiedAt : Timestamp;
    motivo : String(128);
    usuario : String(128);
    estado : Estado;
    tipo_solicitud : Association to one TiposDeSolicitud;
    persona_soporte : Association to one PersonasSoporte;
    urgencia : Association to one Urgencia;
    comunicaciones : Association to many Comunicaciones on comunicaciones.solicitud = $self;
}

entity PersonasSoporte
{
    key ID : UUID;
    Apellido1 : String(128);
    Apellido2 : String(128);
    Nombre : String(128);
    solicitudes : Association to many Solicitudes on solicitudes.persona_soporte = $self;
}

entity Comunicaciones
{
    key ID : UUID;
    timestamp : Timestamp;
    author : String(128);
    message : String(1024);
    key solicitud : Association to one Solicitudes;
}

entity TiposDeSolicitud
{
    key ID : UUID;
    Nombre : String(128);
}

entity Urgencia
{
    key ID : UUID;
    Nombre : String(128);
}

type Estado : String(2) enum
{
    Nuevo = 'NU';
    Asignado = 'AS';
    En_Proceso = 'PR';
    En_Espera = 'ES';
    Resuelto = 'RE';
    Cerrado = 'CE';
}
