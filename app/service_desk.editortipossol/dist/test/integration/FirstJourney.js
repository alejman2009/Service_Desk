sap.ui.define(["sap/ui/test/opaQunit"],function(i){"use strict";var e={run:function(){QUnit.module("First journey");i("Start application",function(i,e,t){i.iStartMyApp();t.onTheTiposDeSolicitudList.iSeeThisPage()});i("Navigate to ObjectPage",function(i,e,t){e.onTheTiposDeSolicitudList.onFilterBar().iExecuteSearch();t.onTheTiposDeSolicitudList.onTable().iCheckRows();e.onTheTiposDeSolicitudList.onTable().iPressRow(0);t.onTheTiposDeSolicitudObjectPage.iSeeThisPage()});i("Teardown",function(i,e,t){i.iTearDownMyApp()})}};return e});
//# sourceMappingURL=FirstJourney.js.map