const cds = require('@sap/cds');

module.exports = async function() {
    const { Solicitudes } = this.entities;

    // Al crear una solicitud, el usuario autenticado será automáticamente asignado como creador
    this.before('CREATE', Solicitudes, async (req) => {
        req.data.QuienCreo = req.user.id;
        req.data.FechaCreacion = new Date();
        req.data.Estado = "Pendiente"; // Estado inicial
    });

    // Bloquear cualquier intento de actualización por parte del usuario
    this.before(['UPDATE', 'DELETE'], Solicitudes, async (req) => {
        req.error(403, "No tienes permisos para modificar o eliminar solicitudes.");
    });

    // Bloquear intentos de lectura de solicitudes que no pertenezcan al usuario autenticado
    this.before('READ', Solicitudes, async (req) => {
        if (!req.user || !req.user.id) {
            req.error(401, "No autenticado");
        }

        req.query.where({ QuienCreo: req.user.id }); // Filtra solo las solicitudes del usuario autenticado
    });
};
