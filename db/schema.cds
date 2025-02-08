namespace Service_Desk;

entity Solicitudes
{
    key ID : UUID;
    FechaCreacion : DateTime;
    FechaModificacion : DateTime;
    QuienCreo : String;
    QuienModifico : String;
    UsuarioSolicitante : String;
    Estado : String;
    Motivo : String;
    Asignado : Association to one PersonasSoporte;
    tipo : Association to many TiposDeSolicitud on tipo.solicitudes = $self;
    urgencia : Association to many Urgencia on urgencia.solicitudes = $self;
}

entity Comunicaciones
{
    key ID : UUID;
    Autor : String;
    Fecha : DateTime;
    Mensaje : String;
}

entity TiposDeSolicitud
{
    key ID : UUID;
    Nombre : String;
    solicitudes : Association to one Solicitudes;
}

entity Urgencia
{
    key ID : UUID;
    Nombre : String;
    solicitudes : Association to one Solicitudes;
}

entity PersonasSoporte
{
    key ID : UUID;
    Nombre : String;
    Apellido1 : String;
    Apellido2 : String;
    Solicitudes : Association to many Solicitudes on Solicitudes.Asignado = $self;
}
