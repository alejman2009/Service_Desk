sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/servicedeskadmin/test/integration/FirstJourney',
		'servicedesk/servicedeskadmin/test/integration/pages/SolicitudesList',
		'servicedesk/servicedeskadmin/test/integration/pages/SolicitudesObjectPage',
		'servicedesk/servicedeskadmin/test/integration/pages/ComunicacionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesList, SolicitudesObjectPage, ComunicacionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/servicedeskadmin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesList: SolicitudesList,
					onTheSolicitudesObjectPage: SolicitudesObjectPage,
					onTheComunicacionesObjectPage: ComunicacionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);