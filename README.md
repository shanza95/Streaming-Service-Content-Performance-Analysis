## Streaming-Service-Content-Performance-Analysis
### Project Overview: 
This project analyzes content performance, viewer engagement, and subscription trends for a fictional streaming platform. The goal is to understand viewer preferences across regions and genres, identify top-performing content, and evaluate subscriber retention over time. 

### Insights 
Datasets
- Raw Datasets (to be cleaned) can be found [here](Datasets%20to%20be%20cleaned/)
- Cleaned Datasets can be found [here](cleaned%20files%20from%20python/)
  
Data Cleaning & Analysis
- You can explore the full Python implementation for the data cleaning phase in the [notebook](Python_cleaning.ipynb/) , which includes step-by-step code and comments.
- The SQL queries utilized to inspect and perform queries can be found [here](streaming.sql/)
- An interactive dashboard can be downloaded [here](https://public.tableau.com/app/profile/shanza.saleem/viz/streaming_17607609821550/Dashboard1?publish=yes/).
  

### Tools & Technologies
| Category               | Tools                            |
| ---------------------- | -------------------------------- |
| Programming & Cleaning | Python (Pandas, NumPy, Datetime) |
| Database Management    | MySQL               |
| Visualization          | Tableau                         |
| Data Storage           | CSV files                        |
| Version Control        | GitHub                     |

## Project Phases 

### Phase 1: Data Cleaning (Python) 

Key Steps:
- Imported datasets using Pandas.
- Identified and corrected invalid timestamps using pd.to_datetime() and error coercion.
- Removed duplicate content entries from three datasets.
- Standardized genre labels (“SciFi” → “Science Fiction”) and region tags (“US” → “United States”, “UK” → “United Kingdom”).
- Saved cleaned datasets as user_viewing_data.csv, content_library.csv, and subscription_data.csv.
- Connected to MySQL DB
- Installed pymysql library and connected to SQLAlchemy engine to view tables in DB.
  
### Phase 2: SQL Analysis
Key Queries Results:

1. [Top-watched Genres by Region](SQL%20Queries%20Results//Top-watched%20genres%20by%20region.png/)
2. [Viewer Retention Analysis](SQL%20Queries%20Results//Viewer%20retention%20analysis.png/)
3. [Monthly Subscriber Growth](SQL%20Queries%20Results//Monthly%20subscriber%20growth.png/)

### Phase 3: Visualization

| Dashboard                      | Description                                              |
| ------------------------------ | -------------------------------------------------------- |
| **Viewer Engagement Overview** | Device usage, average session duration, peak watch times |
| **Genre & Region Analysis**    | Watch time distribution by genre and geography           |
| **Subscription Trends**        | New vs. renewed users, churn rate, monthly growth        |
| **Retention KPIs**             | Renewal rate by plan, engagement-based churn risk        |



