# Netflix Data Insight Project
This project utilizes a dummy dataset from Kaggle that contains general information about content on Netflix. The main goal is to clean and transform the raw data into a well-structured format suitable for further analysis and insightful visualizations. Key insights explored in this project include:

1. The most frequently appearing genres on Netflix
2. The most active directors in content distribution
3. Popular genres by country
4. And other interesting patterns

## Project Understanding

The dataset does not explicitly provide a dedicated genre column. Instead, it uses the listed_in column, which contains multiple genres combined in a single string separated by commas. To analyze genres properly, this column must be split so that each genre appears as an individual entry.

However, performing this operation using the explode function significantly alters the structure of the dataset, making it unsuitable for general analysis. To address this, the cleaned dataset is split into two separate files:

1. netflix_general_cleaned.csv
    This file contains the cleaned dataset without splitting the genres, ideal for general analysis such as content distribution by year or director frequency.

2. netflix_genre_exploded.csv
    This file contains the dataset with genres split into individual rows, allowing for specific analysis related to genres, such as the most common genres or genre distribution by country.

By separating the data this way, the project maintains flexibility and preserves the integrity of the original dataset structure for different types of analysis.