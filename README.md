# Kultra Mega Stores (KMS) SQL Case Study

This project analyzes transactional and customer data from **Kultra Mega Stores**, a supplier of office furniture and supplies. The analysis covers a 4-year span (2009–2012) and is focused on extracting business insights using **SQL Server Management Studio (SSMS)** and **Microsoft Excel** for visualization.

---

## Case Study Overview

Kultra Mega Stores requested an in-depth review of their sales, customer base, shipping logistics, and profitability to support strategic decisions in the Abuja division. The analysis is split into two main scenarios:

### Scenario 1:
1. Highest Sales by Product Category  
2. Top 3 and Bottom 3 Regions by Sales  
3. Appliance Sales in Ontario  
4. Recommendations for Bottom 10 Customers  
5. Shipping Mode with Highest Cost  

### Scenario 2:
6. Most Valuable Customers & Common Purchases  
7. Top Small Business Customer by Sales  
8. Corporate Customer with Most Orders  
9. Most Profitable Consumer Customer  
10. Returns Insight by Customer Segment  
11. Shipping Mode Efficiency vs. Order Priority  

---

## Tools Used

- **SQL Server Management Studio (SSMS)**  
  For data querying, transformation, and analysis  
- **Microsoft Excel**  
  For data cleaning, visualization, and reporting  
- **GitHub**  
  For version control and portfolio hosting

---

## Key Insights

### Sales & Profitability
- **Technology** is the top-selling and most profitable product category.
- **West, Ontario, and Prairie** are the most lucrative regions.
- Appliance sales in Ontario totaled **$202,346.84**.

### Customers
- High-value customers include **Emily Phan**, **Deborah Brumfield**, and **Dennis Kane**.
- **Dennis Kane (Small Business)** made the highest sales among small business customers.
- **Adam Hart (Corporate)** placed the most orders between 2009–2012.
- **Emily Phan (Consumer)** was the most profitable customer.

### Shipping & Logistics
- **Delivery Truck** had the highest overall shipping cost (~**$51,972**).
- **Regular Air** was the most frequently used mode, regardless of order priority — indicating possible misalignment in cost-efficiency vs urgency.

### Returns & Profitability
- Negative profit entries were used to infer product returns.
- Returns were found across all customer segments, especially in **Corporate** and **Small Business**.

---

## Visualizations

All insights were visualized using Excel charts except:
-  **Top 10 customers with returned items and their segments** – due to the absence of an explicit "Return" field in the dataset.

### Included Visuals:
- Total Sales & Profit by Region
- Profitability by Customer Segment
- Sales Distribution by Product Category
- Top 10 Customers by Sales
- Top 10 Customers by Profit
- Annual Sales Trend
- Product Category with the Highest Sales
- Top 3 Regions by Sales
- Bottom 3 Regions by Sales
- Total Sales of Appliances in Ontario
- Bottom 10 Customers by Sales
- Shipping Method with the Most Shipping Cost
- Top 10 Most Valuable Customers by Sales & Typical Products
- Top 10 Small Business Customers with the Highest Sales
- Top 10 Corporate Customers with the Most Orders (2009–2012)
- Top 10 Most Profitable Consumer Customers
- Shipping Method Based on Order Priority


---

## Recommendations

1. **Target high-profit segments** like Consumer and Corporate with loyalty incentives.
2. **Revisit shipping strategy**: Encourage Delivery Truck usage for low-priority orders.
3. **Investigate recurring losses/returns** in specific customer groups.
4. **Promote top-selling categories** like Technology to lower-performing regions.

---

## Repository Structure

Kultra-Mega-Stores-SQL/
│
├── KMS SQL Case Study Raw Data/
├── KMS SQL Cleaned Case Study/
├── KMS Queries/
├── KMS Visuals/
├── KMS Report/
└── README.md


## Acknowledgements
This case study was developed as part of a data analysis project in the DSA Program, with a focus on real-world EDA, storytelling, and dashboard design.
