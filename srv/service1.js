const cds = require('@sap/cds');

module.exports = async function() {
    const { Solicitudes } = this.entities;

    // Asegurar que el usuario es un administrador
    this.before('READ', Solicitudes, async (req) => {
        if (!req.user || !req.user.hasRole('Admin')) {
            req.error(403, "Acceso denegado. Se requiere el rol de Administrador.");
        }
    });

    // Permitir edición solo si la solicitud NO está cerrada
    this.before('UPDATE', Solicitudes, async (req) => {
        const solicitud = await SELECT.one.from(Solicitudes).where({ ID: req.data.ID });

        if (!solicitud) {
            req.error(404, "Solicitud no encontrada.");
        }

        if (solicitud.Estado === 'Cerrada') {
            req.error(403, "La solicitus"+ req.ID + "es una solicitud cerrada. Debes reabrirla primero.");
        }

        req.data.FechaModificacion = new Date();
        req.data.QuienModifico = req.user.id;
    });

    // Función para reabrir una solicitud cerrada
    this.on('reabrirSolicitud', async (req) => {
        const { ID } = req.data;
        const solicitud = await SELECT.one.from(Solicitudes).where({ ID });

        if (!solicitud) {
            req.error(404, "Solicitud no encontrada.");
        }

        if (solicitud.Estado !== 'Cerrada') {
            req.error(400, "Solo se pueden reabrir solicitudes cerradas.");
        }

        await UPDATE(Solicitudes).set({ Estado: 'Pendiente' }).where({ ID });

        return "Solicitud reabierta correctamente.";
    });
};
