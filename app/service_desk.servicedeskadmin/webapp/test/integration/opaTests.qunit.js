sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/servicedeskadmin/test/integration/FirstJourney',
		'servicedesk/servicedeskadmin/test/integration/pages/SolicitudesList',
		'servicedesk/servicedeskadmin/test/integration/pages/SolicitudesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesList, SolicitudesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/servicedeskadmin') + '/index.html'
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