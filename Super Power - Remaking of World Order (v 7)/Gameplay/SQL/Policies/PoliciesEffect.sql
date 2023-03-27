
--Traditional Policies: CapitalYieldChanges +4
INSERT INTO Policy_CapitalYieldPerPopChanges (PolicyType,YieldType,Yield)
SELECT 'POLICY_MONARCHY','YIELD_FOOD',50 UNION ALL
SELECT 'POLICY_MONARCHY','YIELD_CULTURE',50 UNION ALL
SELECT 'POLICY_MONARCHY','YIELD_SCIENCE',50 UNION ALL
SELECT 'POLICY_MONARCHY','YIELD_PRODUCTION',50 ;

--POLICY_LANDED_ELITE
INSERT INTO Policy_ImprovementYieldChanges (PolicyType,ImprovementType,YieldType,Yield)
SELECT 'POLICY_LANDED_ELITE','IMPROVEMENT_TERRACE_FARM','YIELD_FOOD',1 UNION ALL
SELECT 'POLICY_LANDED_ELITE','IMPROVEMENT_POLDER','YIELD_FOOD',1 UNION ALL
SELECT 'POLICY_LANDED_ELITE','IMPROVEMENT_KASBAH','YIELD_FOOD',1 UNION ALL
SELECT 'POLICY_LANDED_ELITE','IMPROVEMENT_SHOSHONE_TIPI','YIELD_FOOD',1 ;

--POLICY_COASTAL_ADMINISTRATION
INSERT INTO Policy_BuildingClassYieldModifiers (PolicyType,BuildingClassType,YieldType,YieldMod)
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SEAPORT','YIELD_SCIENCE',5 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SHIPYARD','YIELD_SCIENCE',5 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_LIGHTHOUSE','YIELD_SCIENCE',3 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_HARBOR','YIELD_SCIENCE',3 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_WOOD_DOCK','YIELD_SCIENCE',3 UNION ALL

SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SEAPORT','YIELD_PRODUCTION',5 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SHIPYARD','YIELD_PRODUCTION',5 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_LIGHTHOUSE','YIELD_PRODUCTION',3 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_HARBOR','YIELD_PRODUCTION',3 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_WOOD_DOCK','YIELD_PRODUCTION',3 ;

INSERT INTO Policy_BuildingClassYieldChanges (PolicyType,BuildingClassType,YieldType,YieldChange)
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SEAPORT','YIELD_GOLD',4 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_SHIPYARD','YIELD_GOLD',4 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_LIGHTHOUSE','YIELD_GOLD',4 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_HARBOR','YIELD_GOLD',4 UNION ALL
SELECT 'POLICY_COASTAL_ADMINISTRATION','BUILDINGCLASS_WOOD_DOCK','YIELD_GOLD',4 ;

--POLICY_BILL_OF_RIGHTS

INSERT INTO Policy_BuildingClassYieldChanges (PolicyType, BuildingClassType, YieldType, YieldChange)
SELECT 'POLICY_BILL_OF_RIGHTS', t1.BuildingClass,t3.YieldType,t1.SpecialistCount
FROM Buildings t1 LEFT JOIN BuildingClasses t2 LEFT JOIN SpecialistYields t3
ON t2.Type = t1.BuildingClass AND t1.SpecialistType = t3.SpecialistType
WHERE t1.Type =  t2.DefaultBuilding AND t1.SpecialistCount > 0 
AND (t1.SpecialistType = 'SPECIALIST_ENGINEER' OR t1.SpecialistType='SPECIALIST_SCIENTIST' OR t1.SpecialistType='SPECIALIST_MERCHANT'
or t1.SpecialistType='SPECIALIST_WRITER' OR t1.SpecialistType='SPECIALIST_MUSICIAN' OR t1.SpecialistType='SPECIALIST_ARTIST');

/*CREATE TRIGGER Policy_Bill_Of_Right_Trigger
AFTER INSERT ON Buildings
WHEN  NEW.SpecialistCount > 0 
      AND NEW.Type IN (SELECT DefaultBuilding FROM BuildingClasses WHERE Type = NEW.BuildingClass)
      AND (NEW.SpecialistType = 'SPECIALIST_ENGINEER' OR NEW.SpecialistType='SPECIALIST_SCIENTIST' OR NEW.SpecialistType='SPECIALIST_MERCHANT'
      or NEW.SpecialistType='SPECIALIST_WRITER' OR NEW.SpecialistType='SPECIALIST_MUSICIAN' OR NEW.SpecialistType='SPECIALIST_ARTIST')
BEGIN
	INSERT INTO Policy_BuildingClassYieldChanges (PolicyType, BuildingClassType, YieldType, YieldChange)
      SELECT 'POLICY_BILL_OF_RIGHTS', NEW.BuildingClass,t1.YieldType,NEW.SpecialistCount
      FROM SpecialistYields t1
      WHERE NEW.SpecialistType = t1.SpecialistType;
END;*/

-- POLICY_MERCHANT_CONFEDERACY
insert into Policy_MinorsTradeRouteYieldRate (PolicyType, YieldType, Rate) values
('POLICY_MERCHANT_CONFEDERACY', 'YIELD_SCIENCE', 10),
('POLICY_MERCHANT_CONFEDERACY', 'YIELD_CULTURE', 10);

-- POLICY_PROTECTIONISM
insert into Policy_InternalTradeRouteDestYieldRate (PolicyType, YieldType, Rate) values
('POLICY_PROTECTIONISM', 'YIELD_SCIENCE', 5),
('POLICY_PROTECTIONISM', 'YIELD_CULTURE', 5);