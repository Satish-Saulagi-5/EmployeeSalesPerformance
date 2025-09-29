CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `GFGDA3`@`%` 
    SQL SECURITY DEFINER
VIEW `northwind`.`employeesalesperformance` AS
    SELECT 
        `e`.`employeeId` AS `employeeId`,
        CONCAT(`e`.`firstname`, ' ', `e`.`lastname`) AS `employeeName`,
        SUM((`o`.`quantity` * `o`.`unitPrice`)) AS `total`
    FROM
        ((`northwind`.`employee` `e`
        JOIN `northwind`.`salesorder` `s` ON ((`e`.`employeeId` = `s`.`employeeId`)))
        JOIN `northwind`.`orderdetail` `o` ON ((`s`.`orderId` = `o`.`orderId`)))
    GROUP BY `e`.`employeeId`
    ORDER BY `total` DESC
    
    