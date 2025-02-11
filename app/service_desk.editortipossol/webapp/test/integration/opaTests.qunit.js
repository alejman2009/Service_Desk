sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'servicedesk/editortipossol/test/integration/FirstJourney',
		'servicedesk/editortipossol/test/integration/pages/TiposDeSolicitudList',
		'servicedesk/editortipossol/test/integration/pages/TiposDeSolicitudObjectPage'
    ],
    function(JourneyRunner, opaJourney, TiposDeSolicitudList, TiposDeSolicitudObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('servicedesk/editortipossol') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTiposDeSolicitudList: TiposDeSolicitudList,
					onTheTiposDeSolicitudObjectPage: TiposDeSolicitudObjectPage
                }
            },
            opaJourney.run
        );
    }
);