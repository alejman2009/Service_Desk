const cds = require('@sap/cds');

module.exports = async function() {
    const { Solicitudes, TiposDeSolicitud, Urgencia } = this.entities;

    // Asegurar que el usuario es autenticado y administrador antes de cualquier acción
    this.before('*', async (req) => {
        if (!req.user || !req.user.is('AuthenticatedUser') || !req.user.is('Admin')) {
            req.error(403, "Acceso denegado. Se requieren los roles 'Authenticated User' y 'Admin'.");
        }
    });

    // Los administradores pueden modificar cualquier solicitud, sin restricciones
    this.before('UPDATE', Solicitudes, async (req) => {
        req.data.modifiedAt = new Date();
        req.data.modifiedBy = req.user.id;
        console.log("Actualización por usuario: "+req.user.id);
    });

    // Los administradores pueden crear, actualizar y eliminar TiposDeSolicitud y Urgencia
    this.before(['CREATE', 'UPDATE', 'DELETE'], [TiposDeSolicitud, Urgencia], async (req) => {
        req.data.modifiedAt = new Date();
        req.data.modifiedBy = req.user.id;
    });
};
