## Overview ##

This dataset contains GeoJSON feature layers for Colorado irrigated lands (parcels, ditch service areas, and canal alignment).
The files are generated from the DWR Irrigated Lands layers from
[Colorado's Decision Support Systems](https://cdss.colorado.gov/gis-data/gis-data-by-category)
for geographic areas that are used in analyses and visualizations.

The irrigated lands layers for water districts are created by intersecting the ditch service areas
for the nearest previous year with the irrigated lands layer for a year.
This represents all the land irrigated by ditches that originate in the basin.
**Currently, parcels irrigated only by groundwater are not included.**

**The data for basins varies.**  For example, Division 1 (South Platte) data include canals and ditch service areas;
however, other divisions do not include a canals layer.

INSERT_DOWNLOADS_SECTION

## Workflow ##

See the [`owf-data-co-dwr-irrigated-lands`](https://github.com/OpenWaterFoundation/owf-data-co-dwr-irrigated-lands)
GitHub repository for information.

## Update Frequency and Versions ##

The dataset is updated annually for many basins in response to a new version from the State of Colorado.
Versions for each irrigated lands year are published.

## Credits ##

*   The original data source is
    [Colorado's Decision Support Systems](https://cdss.colorado.gov/gis-data/gis-data-by-category).
    Follow the Irrigated Lands links for each basin.
*   The Open Water Foundation created and maintains the dataset derived from State of Colorado data.

## License ##

[Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)

## See Also ##

*   [Colorado DWR Ditches](https://data.openwaterfoundation.org/state/co/dwr/ditches/) dataset.
