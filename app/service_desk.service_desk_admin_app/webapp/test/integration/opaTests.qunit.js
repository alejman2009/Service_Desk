sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/servicedeskadminapp/test/integration/FirstJourney',
		'servicedesk/servicedeskadminapp/test/integration/pages/SolicitudesList',
		'servicedesk/servicedeskadminapp/test/integration/pages/SolicitudesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesList, SolicitudesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/servicedeskadminapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesList: SolicitudesList,
					onTheSolicitudesObjectPage: SolicitudesObjectPage
                }
            },
            opaJourney.run
        );
    }
);