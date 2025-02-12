const cds = require('@sap/cds');

module.exports = async function () {
    const { Solicitudes } = this.entities;

    // Asegurar que el usuario está autenticado y tiene rol "User"
    this.before('*', async (req) => {
        if (!req.user || !req.user.is('Authenticated User') || !req.user.is('User')) { //privileged es el usuario de pruebas
            req.error(403, "Acceso denegado. Se requieren los roles 'Authenticated User' y 'User'.");
        }
    });

    // Permitir que los usuarios solo vean sus propias solicitudes.
    // pero si el usuario es "privileged", puede ver todas
    this.before('READ', Solicitudes, async (req) => {
        if (req.user.id !== "privileged") {
            req.query.where({ usuario: req.user.id });
        }
    });

    // Permitir a los usuarios cambiar el estado solo si la solicitud está cerrada
    this.before('UPDATE', Solicitudes, async (req) => {
        const solicitud = await SELECT.one.from(Solicitudes).where({ ID: req.data.ID });

        if (!solicitud) {
            req.error(404, "Solicitud no encontrada.");
        }

        if (solicitud.estado == 'CE') {
            req.error(403, "Solicitud cerrada, no se puede modificar.");
        }

        req.data.modifiedAt = new Date();
        req.data.modifiedBy = req.user.id;
    });
};
