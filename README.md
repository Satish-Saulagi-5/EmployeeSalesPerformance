# EmployeeSalesPerformance
Employee Sales Performance Dashboard using MySQL and Power BI. Visualizes total sales by employee, sales distribution by region, and number of customers handled per employee from the Northwind database.


# 📊 Employee Sales Performance Dashboard  

This project analyzes **employee sales performance** from the **Northwind database** using **MySQL** for data preparation and **Power BI** for dashboard visualization.  

---

## 📌 Project Objectives
- Identify **top-performing employees** by sales amount.  
- Analyze **sales distribution across regions**.  
- Compare the **number of customers handled by each employee**.  
- Build a clean and interactive **Power BI dashboard** for business insights.  

---

## 🖼️ Dashboard Overview
### Dashboard Features:
1. **Employee Sales Performance (Bar Chart)**  
   - Shows total sales amount per employee.  

2. **Total Sales by Region (Pie Chart)**  
   - Displays regional sales contribution in percentages.  

3. **Customers per Employee (Column Chart)**  
   - Highlights the number of unique customers managed by each employee.  

---

## 🗄️ Data Source
- **Database**: Northwind (Sample Database)  
- **Tables Used**:  
  - `employee`  
  - `salesorder`  
  - `orderdetail`  
  - `region`  

---

## 🛠️ SQL Queries

### 1️⃣ Employee Sales Performance View
This view aggregates sales handled by each employee.  

```sql
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `GFGDA3`@`%` 
    SQL SECURITY DEFINER
VIEW `northwind`.`employeesalesperformance` AS
    SELECT 
        e.employeeId AS employeeId,
        CONCAT(e.firstname, ' ', e.lastname) AS employeeName,
        SUM(o.quantity * o.unitPrice) AS total
    FROM
        northwind.employee e
        JOIN northwind.salesorder s ON e.employeeId = s.employeeId
        JOIN northwind.orderdetail o ON s.orderId = o.orderId
    GROUP BY e.employeeId
    ORDER BY total DESC;


## Dashboard Preview  

![Employee Sales Dashboard](https://github.com/Satish-Saulagi-5/EmployeeSalesPerformance.git)





