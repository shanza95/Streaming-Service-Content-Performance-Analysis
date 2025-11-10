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

1.Top-watched Genres by Region

![Top-watched Genres by Region](SQL%20Queries%20Results//Top-watched%20genres%20by%20region.png/) 

The SQL analysis above combines the user_viewing_data and content_library tables using the content_id key to calculate total viewing time by region and genre. This join provides a unified view of how audiences across different regions engage with various types of content. 

From the results, it’s evident that regional preferences vary significantly:

- **Australia** shows the highest engagement for *Comedy* content, with a total of 105 minutes, indicating a strong inclination toward light-hearted entertainment.
- **Action** and **Thriller** genres consistently perform well across multiple markets such as the *United States*, *Canada*, and the *United Kingdom*, reflecting their broad international appeal.
- **Documentaries** and **Science Fiction** attract moderate but steady viewing in all regions, suggesting a smaller yet loyal audience base.
- The presence of the “Global” tag in several genres implies that some content transcends regional boundaries, contributing to overall platform engagement.
  
2. Viewer Retention Analysis
   
 ![Viewer Retention Analysis](SQL%20Queries%20Results//Viewer%20retention%20analysis.png/)

The SQL aggregation above calculates the average watch time per genre, providing insights into overall audience engagement levels.
The results indicate that Action content achieves the highest average watch time (≈151.9 minutes), followed closely by Comedy and Drama, suggesting that these genres sustain viewer interest for longer periods.
Genres such as Documentary and Science Fiction show slightly lower averages, indicating more niche but consistent audiences.
These findings highlight the importance of prioritizing high-engagement genres when planning future content releases and promotional strategies.

3. Monthly Subscriber Growth
   
![Monthly Subscriber Growth](SQL%20Queries%20Results//Monthly%20subscriber%20growth.png/)

The SQL query calculates the number of new subscribers per month, providing a temporal view of user acquisition trends.
The data indicates consistent monthly subscription activity with slight fluctuations across different years.
While most months show modest growth (1–3 new subscribers), certain periods such as *September 2023* and *September 2022* experienced noticeable increases, potentially linked to promotional campaigns or the release of popular content.
This trend analysis helps identify high-performance months, supporting strategic decisions around marketing timing, content launches, and subscription renewal initiatives.

### Phase 3: Visualization

- Region Genre Popularity

![Region Genre Popularity](Tableau%20visualization//Region%20Genre%20Popularity.png/)
<img src="images/Region-Genre-Popularity.png" alt="Region Genre Popularity" width="10"/>



- Users Count by Renewal Status & Genre

  ![Users Count by Renewal Status & Genre](Tableau%20visualization//Users%20count%20by%20Renewal%20Status%20&%20Genre.png/)
  
- View Count by Genre

 ![View Count by Genre](Tableau%20visualization//view%20count%20by%20Genre.png/)

The *Pie Chart* shows that Action is the most viewed genre with 376 views, followed by Comedy (310) and Documentary (292). Thriller (287), Sci-Fi (281), and Drama (277) received relatively similar and slightly lower view counts. Overall, action-oriented and light-hearted content attract the most audience interest, while narrative-driven genres maintain consistent but moderate engagement. The Global category, with 505 views, suggests strong overall reach across genres.

- Watch Time by Device Type

![Watch Time by Device Type](Tableau%20visualization//Watch%20Time%20by%20Device%20Type.png/)

The *Bar Chart* shows TV is most seen device.

- New Subscribers

 ![New Subscribers](Tableau%20visualization//New%20Subscribers.png/)
  




