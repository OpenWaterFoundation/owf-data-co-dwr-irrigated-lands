# Download the current irrigated lands and convert to GeoJSON:
# - this needs to be run after changes to the State's dataset
# - read the geodatabase from 'downloads/' and then write to '../data'.
#
# ======================================================================================
# ================================================= Division 1 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Div1_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div1_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div1_Irrigated_lands/Div1_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in DIV1_Irrigated_Lands.gdb.
UnzipFile(File="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div1_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Canals, no year given
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Canals",GeoLayerID="co-dwr-canals-division1")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-canals-division1",OutputFile="../data/co-dwr-canals-division1.geojson")
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division1-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-2020",OutputFile="../data/co-dwr-irrigated-lands-division1-2020.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division1-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-2015",OutputFile="../data/co-dwr-irrigated-lands-division1-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division1-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-2010",OutputFile="../data/co-dwr-irrigated-lands-division1-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division1-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-2005",OutputFile="../data/co-dwr-irrigated-lands-division1-2005.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_2005",GeoLayerID="co-dwr-ditch-service-area-division1-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-division1-2005",OutputFile="../data/co-dwr-ditch-service-area-division1-2005.geojson")
#
# Irrigated lands, 2001.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_2001",GeoLayerID="co-dwr-irrigated-lands-division1-2001")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-2001",OutputFile="../data/co-dwr-irrigated-lands-division1-2001.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_2001",GeoLayerID="co-dwr-ditch-service-area-division1-2001")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-division1-2001",OutputFile="../data/co-dwr-ditch-service-area-division1-2001.geojson")
#
# Irrigated lands, 1997.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_1997",GeoLayerID="co-dwr-irrigated-lands-division1-1997")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-1997",OutputFile="../data/co-dwr-irrigated-lands-division1-1997.geojson")
#
# Irrigated lands, 1987.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_1987",GeoLayerID="co-dwr-irrigated-lands-division1-1987")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-1987",OutputFile="../data/co-dwr-irrigated-lands-division1-1987.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1987",GeoLayerID="co-dwr-ditch-service-area-division1-1987")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-division1-1987",OutputFile="../data/co-dwr-ditch-service-area-division1-1987.geojson")
#
# Irrigated lands, 1976.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_1976",GeoLayerID="co-dwr-irrigated-lands-division1-1976")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-1976",OutputFile="../data/co-dwr-irrigated-lands-division1-1976.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1976",GeoLayerID="co-dwr-ditch-service-area-division1-1976")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-division1-1976",OutputFile="../data/co-dwr-ditch-service-area-division1-1976.geojson")
#
# Irrigated lands, 1956.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Irrig_1956",GeoLayerID="co-dwr-irrigated-lands-division1-1956")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-1956",OutputFile="../data/co-dwr-irrigated-lands-division1-1956.geojson")
ReadGeoLayersFromFGDB(InputFolder="downloads/Div1_Irrigated_Lands/Div1_Irrigated_Lands_gdb/Div1_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div1_Ditch_Service_Area_1956",GeoLayerID="co-dwr-ditch-service-area-division1-1956")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-division1-1956",OutputFile="../data/co-dwr-ditch-service-area-division1-1956.geojson")
#
# ======================================================================================
# ================================================= Division 1, Republican =============
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Republican_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Republican_Irrigated_Lands_gdb.zip",OutputFile="downloads/Republican_Irrigated_lands/Republican_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in RRDSS.gdb.
UnzipFile(File="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Republican_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2021.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2021",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2021")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2021",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2021.geojson")
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2020",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2020.geojson")
#
# Irrigated lands, 2019.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2019",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2019")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2019",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2019.geojson")
#
# Irrigated lands, 2018.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2018",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2018")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2018",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2018.geojson")
#
# Irrigated lands, 2017.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2017",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2017")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2017",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2017.geojson")
#
# Irrigated lands, 2016.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2016",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2016")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2016",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2016.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2015",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Republican_Irrigated_Lands/Republican_Irrigated_Lands_gdb/RRDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Repub_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division1-republican-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division1-republican-2010",OutputFile="../data/co-dwr-irrigated-lands-division1-republican-2010.geojson")
#
# ======================================================================================
# ================================================= Division 2 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
# Irrigated lands.
# Division 2.
CreateFolder(Folder="downloads/Div2_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div2_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div2_Irrigated_lands/Div2_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in ARKDSS.gdb
UnzipFile(File="downloads/Div2_Irrigated_Lands/Div2_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div2_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2021.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2021",GeoLayerID="co-dwr-irrigated-lands-division2-2021")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2021",OutputFile="../data/co-dwr-irrigated-lands-division2-2021.geojson")
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division2-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2020",OutputFile="../data/co-dwr-irrigated-lands-division2-2020.geojson")
#
# Irrigated lands, 2019.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2019",GeoLayerID="co-dwr-irrigated-lands-division2-2019")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2019",OutputFile="../data/co-dwr-irrigated-lands-division2-2019.geojson")
#
# Irrigated lands, 2018.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2018",GeoLayerID="co-dwr-irrigated-lands-division2-2018")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2018",OutputFile="../data/co-dwr-irrigated-lands-division2-2018.geojson")
#
# Irrigated lands, 2017.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2017",GeoLayerID="co-dwr-irrigated-lands-division2-2017")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2017",OutputFile="../data/co-dwr-irrigated-lands-division2-2017.geojson")
#
# Irrigated lands, 2016.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2016",GeoLayerID="co-dwr-irrigated-lands-division2-2016")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2016",OutputFile="../data/co-dwr-irrigated-lands-division2-2016.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division2-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2015",OutputFile="../data/co-dwr-irrigated-lands-division2-2015.geojson")
#
# Irrigated lands, 2014.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2014",GeoLayerID="co-dwr-irrigated-lands-division2-2014")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2014",OutputFile="../data/co-dwr-irrigated-lands-division2-2014.geojson")
#
# Irrigated lands, 2013.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2013",GeoLayerID="co-dwr-irrigated-lands-division2-2013")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2013",OutputFile="../data/co-dwr-irrigated-lands-division2-2013.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division2-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-2010",OutputFile="../data/co-dwr-irrigated-lands-division2-2010.geojson")
#
# Irrigated lands, 1998.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_1998",GeoLayerID="co-dwr-irrigated-lands-division2-1998")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-1998",OutputFile="../data/co-dwr-irrigated-lands-division2-1998.geojson")
#
# Irrigated lands, 1988.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_1988",GeoLayerID="co-dwr-irrigated-lands-division2-1988")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-1988",OutputFile="../data/co-dwr-irrigated-lands-division2-1988.geojson")
#
# Irrigated lands, 1975.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_1975",GeoLayerID="co-dwr-irrigated-lands-division2-1975")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-1975",OutputFile="../data/co-dwr-irrigated-lands-division2-1975.geojson")
#
# Irrigated lands, 1954.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div2_Irrigated_Lands/ARKDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div2_Irrig_1954",GeoLayerID="co-dwr-irrigated-lands-division2-1954")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division2-1954",OutputFile="../data/co-dwr-irrigated-lands-division2-1954.geojson")
#
# ======================================================================================
# ================================================= Division 3 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Div3_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div3_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div3_Irrigated_lands/Div3_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in RGDSS.gdb
UnzipFile(File="downloads/Div3_Irrigated_Lands/Div3_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div3_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2021.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2021",GeoLayerID="co-dwr-irrigated-lands-division3-2021")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2021",OutputFile="../data/co-dwr-irrigated-lands-division3-2021.geojson")
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division3-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2020",OutputFile="../data/co-dwr-irrigated-lands-division3-2020.geojson")
#
# Irrigated lands, 2016.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2016",GeoLayerID="co-dwr-irrigated-lands-division3-2016")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2016",OutputFile="../data/co-dwr-irrigated-lands-division3-2016.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division3-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2015",OutputFile="../data/co-dwr-irrigated-lands-division3-2015.geojson")
#
# Irrigated lands, 2014.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2014",GeoLayerID="co-dwr-irrigated-lands-division3-2014")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2014",OutputFile="../data/co-dwr-irrigated-lands-division3-2014.geojson")
#
# Irrigated lands, 2013.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2013",GeoLayerID="co-dwr-irrigated-lands-division3-2013")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2013",OutputFile="../data/co-dwr-irrigated-lands-division3-2013.geojson")
#
# Irrigated lands, 2012.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2012",GeoLayerID="co-dwr-irrigated-lands-division3-2012")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2012",OutputFile="../data/co-dwr-irrigated-lands-division3-2012.geojson")
#
# Irrigated lands, 2011.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2011",GeoLayerID="co-dwr-irrigated-lands-division3-2011")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2011",OutputFile="../data/co-dwr-irrigated-lands-division3-2011.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division3-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2010",OutputFile="../data/co-dwr-irrigated-lands-division3-2010.geojson")
#
# Irrigated lands, 2009.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2009",GeoLayerID="co-dwr-irrigated-lands-division3-2009")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2009",OutputFile="../data/co-dwr-irrigated-lands-division3-2009.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division3-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2005",OutputFile="../data/co-dwr-irrigated-lands-division3-2005.geojson")
#
# Irrigated lands, 2002.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_2002",GeoLayerID="co-dwr-irrigated-lands-division3-2002")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-2002",OutputFile="../data/co-dwr-irrigated-lands-division3-2002.geojson")
#
# Irrigated lands, 1998.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_1998",GeoLayerID="co-dwr-irrigated-lands-division3-1998")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-1998",OutputFile="../data/co-dwr-irrigated-lands-division3-1998.geojson")
#
# Irrigated lands, 1936.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div3_Irrigated_Lands/RGDSS.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div3_Irrig_1936",GeoLayerID="co-dwr-irrigated-lands-division3-1936")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division3-1936",OutputFile="../data/co-dwr-irrigated-lands-division3-1936.geojson")
#
# ======================================================================================
# ================================================= Division 4 =========================
# ======================================================================================
#
# Download an unzip the geodatabase.
CreateFolder(Folder="downloads/Div4_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div4_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div4_Irrigated_lands/Div4_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in Div4_IrrigatedLands.gdb.
UnzipFile(File="downloads/Div4_Irrigated_Lands/Div4_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div4_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division4-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-2020",OutputFile="../data/co-dwr-irrigated-lands-division4-2020.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division4-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-2015",OutputFile="../data/co-dwr-irrigated-lands-division4-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division4-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-2010",OutputFile="../data/co-dwr-irrigated-lands-division4-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division4-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-2005",OutputFile="../data/co-dwr-irrigated-lands-division4-2005.geojson")
#
# Irrigated lands, 2000.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_2000",GeoLayerID="co-dwr-irrigated-lands-division4-2000")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-2000",OutputFile="../data/co-dwr-irrigated-lands-division4-2000.geojson")
#
# Irrigated lands, 1993.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div4_Irrigated_Lands/Div4_IrrigatedLands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div4_Irrig_1993",GeoLayerID="co-dwr-irrigated-lands-division4-1993")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division4-1993",OutputFile="../data/co-dwr-irrigated-lands-division4-1993.geojson")
#
# ======================================================================================
# ================================================= Division 5 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Div5_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div5_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div5_Irrigated_lands/Div5_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in Div5_Irrigated_Lands.gdb.
UnzipFile(File="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div5_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division5-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-2020",OutputFile="../data/co-dwr-irrigated-lands-division5-2020.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division5-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-2015",OutputFile="../data/co-dwr-irrigated-lands-division5-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division5-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-2010",OutputFile="../data/co-dwr-irrigated-lands-division5-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division5-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-2005",OutputFile="../data/co-dwr-irrigated-lands-division5-2005.geojson")
#
# Irrigated lands, 2000.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_2000",GeoLayerID="co-dwr-irrigated-lands-division5-2000")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-2000",OutputFile="../data/co-dwr-irrigated-lands-division5-2000.geojson")
#
# Irrigated lands, 1993.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div5_Irrigated_Lands/Div5_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div5_Irrig_1993",GeoLayerID="co-dwr-irrigated-lands-division5-1993")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division5-1993",OutputFile="../data/co-dwr-irrigated-lands-division5-1993.geojson")
#
# ======================================================================================
# ================================================= Division 6 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Div6_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div6_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div6_Irrigated_lands/Div6_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in Div6_Irrigated_Lands.gdb.
UnzipFile(File="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div6_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division6-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-2020",OutputFile="../data/co-dwr-irrigated-lands-division6-2020.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division6-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-2015",OutputFile="../data/co-dwr-irrigated-lands-division6-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division6-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-2010",OutputFile="../data/co-dwr-irrigated-lands-division6-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division6-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-2005",OutputFile="../data/co-dwr-irrigated-lands-division6-2005.geojson")
#
# Irrigated lands, 2000.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_2000",GeoLayerID="co-dwr-irrigated-lands-division6-2000")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-2000",OutputFile="../data/co-dwr-irrigated-lands-division6-2000.geojson")
#
# Irrigated lands, 1993.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div6_Irrigated_Lands/Div6_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div6_Irrig_1993",GeoLayerID="co-dwr-irrigated-lands-division6-1993")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division6-1993",OutputFile="../data/co-dwr-irrigated-lands-division6-1993.geojson")
#
# ======================================================================================
# ================================================= Division 6, District 47 ============
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Dist47_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Dist47_Irrigated_Lands_gdb.zip",OutputFile="downloads/Dist47_Irrigated_lands/Dist47_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in Dist47_Irrigated_Lands.gdb.
UnzipFile(File="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Dist47_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
#
# Canals, no year.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Canals",GeoLayerID="co-dwr-canals-district47")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-canals-district47",OutputFile="../data/co-dwr-canals-district47.geojson")
#
# Service area, no year.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Ditch_Service_Area",GeoLayerID="co-dwr-ditch-service-area-district47")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditch-service-area-district47",OutputFile="../data/co-dwr-ditch-service-area-district47.geojson")
#
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-district47-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2020",OutputFile="../data/co-dwr-irrigated-lands-district47-2020.geojson")
#
# Irrigated lands, 2019.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2019",GeoLayerID="co-dwr-irrigated-lands-district47-2019")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2019",OutputFile="../data/co-dwr-irrigated-lands-district47-2019.geojson")
#
# Irrigated lands, 2018.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2018",GeoLayerID="co-dwr-irrigated-lands-district47-2018")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2018",OutputFile="../data/co-dwr-irrigated-lands-district47-2018.geojson")
#
# Irrigated lands, 2017.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2017",GeoLayerID="co-dwr-irrigated-lands-district47-2017")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2017",OutputFile="../data/co-dwr-irrigated-lands-district47-2017.geojson")
#
# Irrigated lands, 2016.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2016",GeoLayerID="co-dwr-irrigated-lands-district47-2016")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2016",OutputFile="../data/co-dwr-irrigated-lands-district47-2016.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-district47-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2015",OutputFile="../data/co-dwr-irrigated-lands-district47-2015.geojson")
#
# Irrigated lands, 2014.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2014",GeoLayerID="co-dwr-irrigated-lands-district47-2014")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2014",OutputFile="../data/co-dwr-irrigated-lands-district47-2014.geojson")
#
# Irrigated lands, 2013.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2013",GeoLayerID="co-dwr-irrigated-lands-district47-2013")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2013",OutputFile="../data/co-dwr-irrigated-lands-district47-2013.geojson")
#
# Irrigated lands, 2012.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2012",GeoLayerID="co-dwr-irrigated-lands-district47-2012")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2012",OutputFile="../data/co-dwr-irrigated-lands-district47-2012.geojson")
#
# Irrigated lands, 2011.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2011",GeoLayerID="co-dwr-irrigated-lands-district47-2011")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2011",OutputFile="../data/co-dwr-irrigated-lands-district47-2011.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-district47-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2010",OutputFile="../data/co-dwr-irrigated-lands-district47-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-district47-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2005",OutputFile="../data/co-dwr-irrigated-lands-district47-2005.geojson")
#
# Irrigated lands, 2001.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_2001",GeoLayerID="co-dwr-irrigated-lands-district47-2001")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-2001",OutputFile="../data/co-dwr-irrigated-lands-district47-2001.geojson")
#
# Irrigated lands, 1987.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_1987",GeoLayerID="co-dwr-irrigated-lands-district47-1987")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-1987",OutputFile="../data/co-dwr-irrigated-lands-district47-1987.geojson")
#
# Irrigated lands, 1976.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_1976",GeoLayerID="co-dwr-irrigated-lands-district47-1976")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-1976",OutputFile="../data/co-dwr-irrigated-lands-district47-1976.geojson")
#
# Irrigated lands, 1956.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_1956",GeoLayerID="co-dwr-irrigated-lands-district47-1956")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-1956",OutputFile="../data/co-dwr-irrigated-lands-district47-1956.geojson")
#
# Irrigated lands, 1952.
ReadGeoLayersFromFGDB(InputFolder="downloads/Dist47_Irrigated_Lands/Dist47_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Dist47_Irrig_1952",GeoLayerID="co-dwr-irrigated-lands-district47-1952")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-district47-1952",OutputFile="../data/co-dwr-irrigated-lands-district47-1952.geojson")
#
# ======================================================================================
# ================================================= Division 7 =========================
# ======================================================================================
#
# Download and unzip the geodatabase.
CreateFolder(Folder="downloads/Div7_Irrigated_Lands",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Div7_Irrigated_Lands_gdb.zip",OutputFile="downloads/Div7_Irrigated_lands/Div7_Irrigated_Lands_gdb.zip")
# Unzip the geodatabase, results in Div7_Irrigated_Lands.gdb.
UnzipFile(File="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands_gdb.zip",OutputFolder="downloads/Div7_Irrigated_Lands",IfFolderDoesNotExist="Create")
# =====================================================
# Irrigated lands, 2020.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_2020",GeoLayerID="co-dwr-irrigated-lands-division7-2020")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-2020",OutputFile="../data/co-dwr-irrigated-lands-division7-2020.geojson")
#
# Irrigated lands, 2015.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_2015",GeoLayerID="co-dwr-irrigated-lands-division7-2015")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-2015",OutputFile="../data/co-dwr-irrigated-lands-division7-2015.geojson")
#
# Irrigated lands, 2010.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_2010",GeoLayerID="co-dwr-irrigated-lands-division7-2010")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-2010",OutputFile="../data/co-dwr-irrigated-lands-division7-2010.geojson")
#
# Irrigated lands, 2005.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_2005",GeoLayerID="co-dwr-irrigated-lands-division7-2005")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-2005",OutputFile="../data/co-dwr-irrigated-lands-division7-2005.geojson")
#
# Irrigated lands, 2000.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_2000",GeoLayerID="co-dwr-irrigated-lands-division7-2000")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-2000",OutputFile="../data/co-dwr-irrigated-lands-division7-2000.geojson")
#
# Irrigated lands, 1993.
ReadGeoLayersFromFGDB(InputFolder="downloads/Div7_Irrigated_Lands/Div7_Irrigated_Lands.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="Div7_Irrig_1993",GeoLayerID="co-dwr-irrigated-lands-division7-1993")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-irrigated-lands-division7-1993",OutputFile="../data/co-dwr-irrigated-lands-division7-1993.geojson")
