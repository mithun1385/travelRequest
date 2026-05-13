sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"travelapproval/test/integration/pages/TravelRequestsList",
	"travelapproval/test/integration/pages/TravelRequestsObjectPage"
], function (JourneyRunner, TravelRequestsList, TravelRequestsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('travelapproval') + '/test/flp.html#app-preview',
        pages: {
			onTheTravelRequestsList: TravelRequestsList,
			onTheTravelRequestsObjectPage: TravelRequestsObjectPage
        },
        async: true
    });

    return runner;
});

