sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/servicedeskuser/test/integration/FirstJourney',
		'servicedesk/servicedeskuser/test/integration/pages/SolicitudesList',
		'servicedesk/servicedeskuser/test/integration/pages/SolicitudesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesList, SolicitudesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/servicedeskuser') + '/index.html'
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