# WORLD LAYOFFS FROM 2020 - 2023 DATA CLEANING USING MYSQL
This project focused on cleaning and standardizing records of the world layoffs dataset using MySQL to ensure data accuracy, consistency, and readiness for analysis. The dataset included multiple tables: company, location, industry, total_laid_off, percentage_laid_off, stage, country, and funds_raised_millions. The data cleaning tasks involved identifying and handling duplicates, null values, blank cells, and inconsistencies across all tables. 

The data is in Excel for your view [Download here](https://1drv.ms/x/c/fc11b36f16d1a624/EenBnEDQQMRGs7-iQcmdl6sBBTO5GHI9Zsli4MAMECDP8Q?e=b8lmLa)

## Technical Tools
MYSQL

## Key Steps Performed 
- **Checking and Removing Duplicates:** I created a new table that replicated the values and format of the raw data for the cleaning process. Using a Common Table Expression (CTE) with `ROW_NUMBER()`, I identified and removed duplicate records from the dataset.
- **Standardizing Data:** Ensured data consistency by trimming extra spaces in the `company` column. Corrected spelling variations in the `industry` column, where entries like `crypto currency`, `crypto`, and `crypto.` were standardized to `Crypto`. Similarly, inconsistencies in the `country` column, such as `United States` and `United states.`, were unified as `United States`. Additionally, the `date` column was converted from text to a proper `DATE` format.  

- **Handling Null Values and Blank Spaces:** Removed records where both `total_laid_off` and `percentage_laid_off` were null or blank, as they could impact exploratory analysis. For companies with missing industry data, values were filled based on matching company names to improve data accuracy for analysis.  

- **Enhancing Readability:** Reformatted tables for better interpretation and removed irrelevant columns like `row_num` after completing the cleaning process.

[Layoff cleaning.sql](https://github.com/daniel-ifenna/DATA_CLEANING_LAYOFFS_DATASET/blob/8b86f0476e210a18617c60050794909f18e442f4/Layoff%20cleaning.sql)

[Cleaned data](https://1drv.ms/x/c/fc11b36f16d1a624/EenBnEDQQMRGs7-iQcmdl6sBBTO5GHI9Zsli4MAMECDP8Q?e=b8lmLa](https://1drv.ms/x/c/fc11b36f16d1a624/EX0EEQMHa4NAgbkBsLlt2kMBrmnXYqBf-kDx-XLUafDyTw?e=MzgYsj))

 

