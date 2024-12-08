ohioPlate = {}

modDirectory = g_currentModDirectory

function ohioPlate.loadMapData(self, superFunc, xmlFile, missionInfo, baseDirectory)
    local path = modDirectory.."xml/licensePlates.xml"
    local plateXML = loadXMLFile("FS25_OhioLicensePlates", path)

    local returnValue = superFunc(self, plateXML, missionInfo, modDirectory)

    return returnValue
end
LicensePlateManager.loadMapData = Utils.overwrittenFunction(LicensePlateManager.loadMapData, ohioPlate.loadMapData)