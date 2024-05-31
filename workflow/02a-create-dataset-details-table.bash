#!/bin/bash

# This script lists files in the ../data folder and creates Markdown tables that can be inserted into the 'dataset-details.md' file.
# Output is to the 'results/dataset-details-table.md' file.

tableFile="results/dataset-details-table.md"
# Prefix to add before GeoJSON file URL:
viewerPrefix="https://gavinr.github.io/geojson-viewer/?url="
# URL prefix for OWF's data website.
urlPrefix="https://data.openwaterfoundation.org/state/co/dwr/irrigated-lands"
# Full prefix before dataset file.
viewPrefix="${viewerPrefix}${urlPrefix}"

echo "## Downloads ##

The following files can be downloaded or used directly.

*   Files are organized by water division.
*   Files for water districts are available for specific basins.

More files can be created if requested.
Currently, only basins that are of interest for Open Water Foundation applications have been added." > ${tableFile}

# ----------------------------------
# Division 1
# ----------------------------------

echo "
### Division 1 (South Platte, excluding the Republican) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division1-[0-9][0-9][0-9][0-9]* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Service Area ####

Files are available containing ditch service area for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-ditch-service-area-division1* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Canals ####

Files are available containing canal alignment (same for all historical years).

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-canals-division1* | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 1 Districts
# ----------------------------------

echo "
### Division 1 Selected Water Districts ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# Sort by basin and then year within the basin.
tmpfile=/tmp/ls.txt
div1DistrictList="3 4 5 6 7"
rm ${tmpfile}
for district in ${div1DistrictList}; do
  ls -1 ../data/co-dwr-irrigated-lands-district${district}-*.geojson | sort -r >> ${tmpfile}
done
cat ${tmpfile} | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Service Area ####

Files are available containing ditch service area (fewer years than for irrigated lands).

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# Sort by district and then year (newest first).
rm ${tmpfile}
for district in ${div1DistrictList}; do
  ls -1 ../data/co-dwr-ditch-service-area-district${district}-*.geojson | sort -r >> ${tmpfile}
done
cat ${tmpfile} | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Canals ####

Files are available containing canal alignment (same for all historical years).

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# Sort by district and then year (newest first).
rm ${tmpfile}
for district in ${div1DistrictList}; do
  ls -1 ../data/co-dwr-canals-district${district}.geojson | sort -r >> ${tmpfile}
done
cat ${tmpfile} | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 1, Republican
# ----------------------------------

echo "
### Division 1, Republican Only ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division1-republican* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 2
# ----------------------------------

echo "
### Division 2 (Arkansas) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division2* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 3
# ----------------------------------

echo "
### Division 3 (Rio Grande) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division3* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 4
# ----------------------------------

echo "
### Division 4 (Gunnison) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division4* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 5
# ----------------------------------

echo "
### Division 5 (Colorado) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division5* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 6
# ----------------------------------

echo "
### Division 6 (Yampa, excluding District 47) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division6* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 6, District 47
# ----------------------------------

echo "
### District 47 (North Platte) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-district47* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Service Area ####

Files are available containing ditch service area (same for all historical years).

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-ditch-service-area-district47* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo "
#### Canals ####

Files are available containing canal alignment (same for all historical years).

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-canals-district47* | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

# ----------------------------------
# Division 7
# ----------------------------------

echo "
### Division 7 (San Juan/Dolores) ###

#### Irrigated Lands ####

Files are available containing irrigated lands for historical years.

| **Layer File** | **Size (bytes)** | **View** |
|--|--:|--|" >> ${tableFile}

# The following puts the all basins file at the end,
# which is OK because it is large and don't want people to click on it first by default.
ls -1 ../data/co-dwr-irrigated-lands-division7* | sort -r | while read filepath; do
  filename=$(basename ${filepath})
  size=$(stat --printf="%s" ${filepath})
  echo '| [`'${filename}'`]('${filename}') |' ${size} '|[View]('${viewPrefix}'/'${filename}') |' >> ${tableFile}
done

echo ""
echo "The output file is:  ${tableFile}"
echo "Upload to S3 by running TSTool command file:  02b-upload-dataset-to-s3.tstool"
echo ""
