## Streaming-Service-Content-Performance-Analysis
### Project Overview: 
This project analyzes content performance, viewer engagement, and subscription trends for a fictional streaming platform. The goal is to understand viewer preferences across regions and genres, identify top-performing content, and evaluate subscriber retention over time. 

### Insights 
An interactive dashboard can be downloaded here: https://public.tableau.com/app/profile/shanza.saleem/viz/streaming_17607609821550/Dashboard1?publish=yes.
The SQL queries utilized to inspect and perform quality checks can be found here:
The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found here:

### Datasets to be downloaded:
- content_library
- user_viewing_data
- suscription_data
   
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
Key Queries:

1. Top-watched Genres by Region
2. Viewer Retention Analysis
3. Monthly Subscriber Growth



### Phase 3: Visualization


