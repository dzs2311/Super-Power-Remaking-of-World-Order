INSERT INTO BuildingClassCollections(Type)
SELECT 'COLLECTIONS_AIR_SIEGE' UNION ALL
SELECT 'COLLECTIONS_ORBAN_CANNON' UNION ALL
SELECT 'COLLECTIONS_POWERFUL_CANNON';

INSERT INTO BuildingClassCollections_Entries(CollectionType,BuildingClassIndex,BuildingClassType)
SELECT 'COLLECTIONS_AIR_SIEGE', 1,   'BUILDINGCLASS_MILITARY_BASE' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 2,   'BUILDINGCLASS_SHIPYARD' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 3,   'BUILDINGCLASS_ARSENAL' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 4,   'BUILDINGCLASS_ARMORY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 5,   'BUILDINGCLASS_BARRACKS' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 6,   'BUILDINGCLASS_WOOD_DOCK' UNION ALL

SELECT 'COLLECTIONS_AIR_SIEGE', 7,   'BUILDINGCLASS_CASTLE' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 8,   'BUILDINGCLASS_WALLS' UNION ALL

SELECT 'COLLECTIONS_AIR_SIEGE', 9,   'BUILDINGCLASS_FUSION_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 10,  'BUILDINGCLASS_NUCLEAR_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 11,  'BUILDINGCLASS_NUCLEAR_PLANT_EXTEND' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 12,  'BUILDINGCLASS_OIL_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 13,  'BUILDINGCLASS_COAL_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 14,  'BUILDINGCLASS_COAL_PLANT_EXTEND' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 15,  'BUILDINGCLASS_COAL_PLANT_EXTEND_IZ' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 16,  'BUILDINGCLASS_TIDAL_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 17,  'BUILDINGCLASS_SOLAR_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 18,  'BUILDINGCLASS_GAS_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 19,  'BUILDINGCLASS_HYDRO_PLANT' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 20,  'BUILDINGCLASS_WIND_PLANT' UNION ALL

SELECT 'COLLECTIONS_AIR_SIEGE', 21,  'BUILDINGCLASS_SPACESHIP_FACTORY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 22,  'BUILDINGCLASS_FUTURE_FACTORY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 23,  'BUILDINGCLASS_FACTORY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 24,  'BUILDINGCLASS_METAL_FACTORY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 25,  'BUILDINGCLASS_INLAND_CANAL' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 26,  'BUILDINGCLASS_STEEL_MILL' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 27,  'BUILDINGCLASS_OIL_REFINERY' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 28,  'BUILDINGCLASS_IRON_PROVIDER' UNION ALL
SELECT 'COLLECTIONS_AIR_SIEGE', 29,  'BUILDINGCLASS_MINGING_FACTORY' UNION ALL

SELECT 'COLLECTIONS_ORBAN_CANNON', 1,   'BUILDINGCLASS_BARRACKS' UNION ALL
SELECT 'COLLECTIONS_ORBAN_CANNON', 2,   'BUILDINGCLASS_ARMORY' UNION ALL
SELECT 'COLLECTIONS_ORBAN_CANNON', 3,   'BUILDINGCLASS_WALLS' UNION ALL
SELECT 'COLLECTIONS_ORBAN_CANNON', 4,   'BUILDINGCLASS_CASTLE' UNION ALL

SELECT 'COLLECTIONS_POWERFUL_CANNON', 1,   'BUILDINGCLASS_CASTLE' UNION ALL
SELECT 'COLLECTIONS_POWERFUL_CANNON', 2,   'BUILDINGCLASS_WALLS' ;

