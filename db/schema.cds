namespace Service_Desk;

entity Solicitudes
{
    key ID : UUID;
    FechaCreacion : DateTime;
    FechaModificacion : DateTime;
    QuienCreo : String;
    QuienModifico : String;
    UsuarioSolicitante : String;
    TiposDeSolicitud : Association to one TiposDeSolicitud;
    Estado : String;
    Urgencia : String;
    Motivo : String;
    Asignado : Association to one PersonasSoporte;
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
}

entity Urgencia
{
    key ID : UUID;
    Nombre : String enum
    {
        Alta;
        Media;
        Baja;
    };
}

entity PersonasSoporte
{
    key ID : UUID;
    Nombre : String;
    Apellido1 : String;
    Apellido2 : String;
}

