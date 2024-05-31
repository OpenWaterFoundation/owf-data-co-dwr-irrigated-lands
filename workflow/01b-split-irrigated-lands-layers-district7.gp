# Split the division layers into districts:
# - this is for District 7 (Clear)
# - allow ditch data to extend beyond the district boundary
#
# Make sure a folder exists for the processing.
CreateFolder(Folder="downloads/split",CreateParentFolders="True",IfFolderExists="Ignore")
#
# Read the Division 1 irrigated lands to split by district:
# - read from GeoJSON so that CRS is OK for later algorithms
# - have to fix because intersection complains later
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-2020.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-2020")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2020",OutputGeoLayerID="co-dwr-irrigated-lands-division1-2020")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-2015.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-2015")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2015",OutputGeoLayerID="co-dwr-irrigated-lands-division1-2015")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-2010.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-2010")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2010",OutputGeoLayerID="co-dwr-irrigated-lands-division1-2010")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-2005.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-2005")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2005",OutputGeoLayerID="co-dwr-irrigated-lands-division1-2005")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-2001.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-2001")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2001",OutputGeoLayerID="co-dwr-irrigated-lands-division1-2001")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-1997.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-1997")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1997",OutputGeoLayerID="co-dwr-irrigated-lands-division1-1997")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-1987.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-1987")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1987",OutputGeoLayerID="co-dwr-irrigated-lands-division1-1987")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-1976.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-1976")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1976",OutputGeoLayerID="co-dwr-irrigated-lands-division1-1976")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-irrigated-lands-division1-1956.geojson",GeoLayerID="co-dwr-irrigated-lands-division1-1956")
FixGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1956",OutputGeoLayerID="co-dwr-irrigated-lands-division1-1956")
#
# Service area, District 7
#
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_2005",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-ditch-service-area-district7-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-2005",OutputFile="../data/co-dwr-ditch-service-area-district7-2005.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_2001",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-ditch-service-area-district7-2001")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-2001",OutputFile="../data/co-dwr-ditch-service-area-district7-2001.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1987",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-ditch-service-area-district7-1987")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-1987",OutputFile="../data/co-dwr-ditch-service-area-district7-1987.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1976",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-ditch-service-area-district7-1976")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-1976",OutputFile="../data/co-dwr-ditch-service-area-district7-1976.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1956",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-ditch-service-area-district7-1956")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-1956",OutputFile="../data/co-dwr-ditch-service-area-district7-1956.geojson")
#
# Canals, District 7
#
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Canals",Query="WDID LIKE '07%'",GeoLayerID="co-dwr-canals-district7")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-canals-district7",OutputFile="../data/co-dwr-canals-district7.geojson")
#
# Irrigated Lands, District 7:
# - this approach leaves out parcels that include only groundwater supply
#
#ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2020",Query="SW_WDID1 LIKE '07%' OR SW_WDID2 LIKE '07%' OR SW_WDID3 LIKE '07%' OR SW_WDID4 LIKE '07%' OR SW_WDID5 LIKE '07%' OR SW_WDID6 LIKE '07%' OR SW_WDID7 LIKE '07%' OR SW_WDID8 LIKE '07%' OR SW_WDID9 LIKE '07%'",GeoLayerID="co-dwr-ditch-irrigated-lands-district7-2020")
#WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district7-2005",OutputFile="../data/co-dwr-ditch-service-area-district7-2005.geojson")
#
# Intersect the district with the irrigated lands features:
# - ditch service area years are carried forward as necessary if service area year is not available for an irrigated acreage year
# - allow extending outside of the district so that ditch service areas are complete
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-ditch-service-area-district7-2005.geojson",GeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson")
FixGeoLayer(GeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson",OutputGeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson")
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-ditch-service-area-district7-2001.geojson",GeoLayerID="co-dwr-ditch-service-area-district7-2001-geojson")
FixGeoLayer(GeoLayerID="co-dwr-ditch-service-area-district7-2001-geojson",OutputGeoLayerID="co-dwr-ditch-service-area-district7-2001-geojson")
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-ditch-service-area-district7-1987.geojson",GeoLayerID="co-dwr-ditch-service-area-district7-1987-geojson")
FixGeoLayer(GeoLayerID="co-dwr-ditch-service-area-district7-1987-geojson",OutputGeoLayerID="co-dwr-ditch-service-area-district7-1987-geojson")
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-ditch-service-area-district7-1976.geojson",GeoLayerID="co-dwr-ditch-service-area-district7-1976-geojson")
FixGeoLayer(GeoLayerID="co-dwr-ditch-service-area-district7-1976-geojson",OutputGeoLayerID="co-dwr-ditch-service-area-district7-1976-geojson")
ReadGeoLayerFromGeoJSON(InputFile="../data/co-dwr-ditch-service-area-district7-1956.geojson",GeoLayerID="co-dwr-ditch-service-area-district7-1956-geojson")
FixGeoLayer(GeoLayerID="co-dwr-ditch-service-area-district7-1956-geojson",OutputGeoLayerID="co-dwr-ditch-service-area-district7-1956-geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2020",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-2020",OutputFile="../data/co-dwr-irrigated-lands-district7-2020.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2015",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-2015",OutputFile="../data/co-dwr-irrigated-lands-district7-2015.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2010",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-2010",OutputFile="../data/co-dwr-irrigated-lands-district7-2010.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2005",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-2005-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-2005",OutputFile="../data/co-dwr-irrigated-lands-district7-2005.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-2001",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-2001-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-2001")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-2001",OutputFile="../data/co-dwr-irrigated-lands-district7-2001.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1997",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-1987-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-1997")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-1997",OutputFile="../data/co-dwr-irrigated-lands-district7-1997.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1987",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-1987-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-1987")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-1987",OutputFile="../data/co-dwr-irrigated-lands-district7-1987.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1976",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-1976-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-1976")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-1976",OutputFile="../data/co-dwr-irrigated-lands-district7-1976.geojson")
#
IntersectGeoLayer(GeoLayerID="co-dwr-irrigated-lands-division1-1956",IntersectGeoLayerID="co-dwr-ditch-service-area-district7-1956-geojson",OutputGeoLayerID="co-dwr-irrigated-lands-district7-1956")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district7-1956",OutputFile="../data/co-dwr-irrigated-lands-district7-1956.geojson")
