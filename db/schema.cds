namespace Service_Desk;

entity Solicitudes {
    key ID              : UUID;
        createdAt       : Timestamp;
        modifiedAt      : Timestamp;
        motivo          : String(128);
        usuario         : String(128);
        tipo_solicitud  : TiposDeSolicitud;
        persona_soporte : Association to one PersonasSoporte;
        estado          : Estado;
        urgencia        : Urgencia;
        comunicaciones  : Association to many Comunicaciones
                              on comunicaciones.solicitud = $self;
}

entity PersonasSoporte {
    key ID          : UUID;
        Apellido1   : String(128);
        Apellido2   : String(128);
        Nombre      : String(128);
        solicitudes : Association to many Solicitudes
                          on solicitudes.persona_soporte = $self;
}

entity Comunicaciones {
    key ID          : UUID;
        timestamp   : Timestamp;
        author      : String(128);
        message     : String(1024);
        solicitud   : Association to one Solicitudes;
}

type Estado : String(2) enum {
    Nuevo         = 'NU';
    Asignado      = 'AS';
    En_Proceso    = 'PR';
    En_Espera     = 'ES';
    Resuelto      = 'RE';
    Cerrado       = 'CE';
}

type TiposDeSolicitud : String(3) enum{
    Incidencia    = 'INC';
    Seguridad     = 'SEG';
    Documentacion = 'DOC';
}

type Urgencia : String(1) enum {
    Alta          = 'A';
    Media         = 'M';
    Baja          = 'B';
}
