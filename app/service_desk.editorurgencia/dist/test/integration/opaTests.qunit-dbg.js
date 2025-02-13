sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/editorurgencia/test/integration/FirstJourney',
		'servicedesk/editorurgencia/test/integration/pages/UrgenciaList',
		'servicedesk/editorurgencia/test/integration/pages/UrgenciaObjectPage'
    ],
    function(JourneyRunner, opaJourney, UrgenciaList, UrgenciaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/editorurgencia') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUrgenciaList: UrgenciaList,
					onTheUrgenciaObjectPage: UrgenciaObjectPage
                }
            },
            opaJourney.run
        );
    }
);