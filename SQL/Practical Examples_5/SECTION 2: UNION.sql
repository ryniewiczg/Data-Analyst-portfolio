1. Combine the list of statuses from the Payments and Orders tables.

SELECT Status
FROM `project.dataset.Orders`
UNION DISTINCT
SELECT Status
FROM `project.dataset.Payments`;


2. Create a list of orders with their status:
- if OrderDate is earlier than 2023-07-01, take the data from the Orders table
- if the date is later (i.e. PaymentDate later than 2023-07-01), take the data from the Payments table

SELECT
  OrderID,
  Status,
  OrderDate AS ReferenceDate
FROM `project.dataset.Orders`
WHERE OrderDate < DATE '2023-07-01'

UNION ALL

SELECT
  OrderID,
  Status,
  PaymentDate AS ReferenceDate
FROM `project.dataset.Payments`
WHERE PaymentDate >= DATE '2023-07-01';


3. Create a list of all postal codes to which shipping is performed – from the Orders and Customers tables.

SELECT ShippingPostalCode AS PostalCode
FROM `project.dataset.Orders`
WHERE ShippingPostalCode IS NOT NULL

UNION DISTINCT

SELECT PostalCode
FROM `project.dataset.Customers`
WHERE PostalCode IS NOT NULL;


4. Combine the list of dates from the Payments and Orders tables:
- from Payments: PaymentDate as TransactionDate
- from Orders: OrderDate as TransactionDate
Create a unique list of dates.

SELECT PaymentDate AS TransactionDate
FROM `project.dataset.Payments`

UNION DISTINCT

SELECT OrderDate AS TransactionDate
FROM `project.dataset.Orders`;


5. Combine historical data from 2023 and 2024 with the 2025 fact table.
Copy all columns:
FactID, StoreID, DateID, ShiftID, WeatherID, EquipmentID, CoffeeBatchID, 
CampaignID, FootfallCount, StaffOnShiftCount, AvgQueueTimeSec, AvgPrepTimeSec, 
EspressoExtractionTimeSec, EspressoTDS_Pct, MilkWaste_ml, CoffeeWaste_g, EnergyConsumption_kWh, 
WaterUsage_L, Satisfaction_1_10, ComplaintsCount, HACCP_AuditScore

SELECT
  FactID,
  StoreID,
  DateID,
  ShiftID,
  WeatherID,
  EquipmentID,
  CoffeeBatchID,
  CampaignID,
  FootfallCount,
  StaffOnShiftCount,
  AvgQueueTimeSec,
  AvgPrepTimeSec,
  EspressoExtractionTimeSec,
  EspressoTDS_Pct,
  MilkWaste_ml,
  CoffeeWaste_g,
  EnergyConsumption_kWh,
  WaterUsage_L,
  Satisfaction_1_10,
  ComplaintsCount,
  HACCP_AuditScore
FROM `project.dataset.Fact_Store_2025`

UNION ALL

SELECT
  FactID,
  StoreID,
  DateID,
  ShiftID,
  WeatherID,
  EquipmentID,
  CoffeeBatchID,
  CampaignID,
  FootfallCount,
  StaffOnShiftCount,
  AvgQueueTimeSec,
  AvgPrepTimeSec,
  EspressoExtractionTimeSec,
  EspressoTDS_Pct,
  MilkWaste_ml,
  CoffeeWaste_g,
  EnergyConsumption_kWh,
  WaterUsage_L,
  Satisfaction_1_10,
  ComplaintsCount,
  HACCP_AuditScore
FROM `project.dataset.Fact_Store_2024`

UNION ALL

SELECT
  FactID,
  StoreID,
  DateID,
  ShiftID,
  WeatherID,
  EquipmentID,
  CoffeeBatchID,
  CampaignID,
  FootfallCount,
  StaffOnShiftCount,
  AvgQueueTimeSec,
  AvgPrepTimeSec,
  EspressoExtractionTimeSec,
  EspressoTDS_Pct,
  MilkWaste_ml,
  CoffeeWaste_g,
  EnergyConsumption_kWh,
  WaterUsage_L,
  Satisfaction_1_10,
  ComplaintsCount,
  HACCP_AuditScore
FROM `project.dataset.Fact_Store_2023`;



