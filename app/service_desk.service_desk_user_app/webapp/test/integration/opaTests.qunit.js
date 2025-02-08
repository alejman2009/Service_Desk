sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/servicedeskuserapp/test/integration/FirstJourney',
		'servicedesk/servicedeskuserapp/test/integration/pages/SolicitudesList',
		'servicedesk/servicedeskuserapp/test/integration/pages/SolicitudesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesList, SolicitudesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/servicedeskuserapp') + '/index.html'
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