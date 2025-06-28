# Crowdfunding-Data-analysis
![image](https://github.com/user-attachments/assets/4c3fda91-ceb4-4c0b-b463-6af2195e91fe)
![image](https://github.com/user-attachments/assets/7165a33b-a9d4-4598-8d10-20fbc709e31b)
🔍 Overview
This project analyzes 300,000+ crowdfunding records to identify patterns influencing campaign outcomes. By integrating data from 5 Excel sources into a unified star-schema data model, it delivers actionable insights through interactive dashboards (Power BI/Tableau) and SQL-driven analytics. Key findings include success rate disparities by funding goals and temporal trends in campaign performance.

⚙️ Key Features
Data Pipeline & Modeling

Consolidated 5 Excel datasets into a star-schema model using SQL and Power Query.

Transformed epoch timestamps into datetime formats for trend analysis.

Implemented static USD conversion for cross-currency comparability.

Metrics & Analytics

Goal-Range Buckets:

Segmented campaigns into funding goal tiers (e.g., < $10K, $10K–50K).

Revealed 65% higher success rate for campaigns under $10K vs. higher tiers.

Success KPIs:

Success Rate = (Successful Campaigns / Total Campaigns)

Avg. Pledged vs. Goal = (Total Pledged / Total Goal) per category.

Dashboards & Visualizations

Power BI/Tableau Dashboards:

Outcome Distribution: Pie charts showing success/fail ratios per category.

Geographical Heatmaps: Campaign density and success rates by country.

YoY Trend Analysis: Line charts tracking pledged amounts vs. goals over time.

Excel Interactive Reports:

Dynamic pivot tables filtering by date ranges, categories, and goal buckets.

📊 Insights
Goal Range	Success Rate	Avg. Pledged vs. Goal
< $10K	78%	142%
$10K – $50K	47%	89%
> $50K	32%	63%
High-Impact Findings:

Campaigns with shorter durations (≤30 days) had 40% higher success rates.

Technology projects exceeded funding goals by 120% on average, while film & games had the highest failure rates (68%).

Q2 (April–June) showed a 22% YoY increase in successful campaigns.

🛠️ Tools Used
Data Modeling: Power Query, SQL (Star-Schema Design).

Analysis: Excel (Pivot Tables, Formulas), SQL (Aggregations, Conversion Logic).

Visualization: Power BI (KPIs, Heatmaps), Tableau (YoY Trends).

Data Sources: Crowdfunding data (CSV/Excel, 300K+ records).

