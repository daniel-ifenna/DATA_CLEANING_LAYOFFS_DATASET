SELECT *
FROM layoffs;

CREATE TABLE Layoff_cleaned
SELECT *
FROM layoffs;

-- BUILD CTE TO CHECK FOR DUPLICATES
DELIMITER $$
WITH DUPLICATE_CHECK AS
(SELECT *,
	row_number()OVER(PARTITION BY company, location, industry, 
	total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
    FROM layoff_cleaned)
    SELECT *
    FROM DUPLICATE_CHECK
    WHERE row_num >1;
DELIMITER ;

-- CREATE A NEW TABLE AND INSERT THE ROW_NUM COLUMN (REMOVING DUPLICATES)

CREATE TABLE `layoff_CLEANED3` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `Row_num` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO layoff_CLEANED3
SELECT *,
	row_number()OVER(PARTITION BY company, location, industry, 
	total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
    FROM layoff_cleaned;

DELETE
FROM layoff_CLEANED3
WHERE Row_num >1 ;

-- Handling Null Values
SELECT DISTINCT INDUSTRY
FROM layoff_cleaned3
ORDER BY 1;

UPDATE layoff_CLEANED3
SET industry = "Crypto"
WHERE industry LIKE "Crypto%";

SELECT company
FROM layoff_cleaned3;

UPDATE layoff_cleaned3
SET company = TRIM(Company);

SELECT distinct country
FROM layoff_cleaned3
ORDER BY 1;

select Count(country)
FROM layoff_cleaned3
WHERE country = 'United States.';

select Count(country)
FROM layoff_cleaned3
WHERE country = 'United States';

UPDATE layoff_cleaned3
SET country = 'United States'
WHERE country LIKE 'United states%';

-- Filling in empty and Null cells in industry when both location and name met the same requirement
SELECT *
FROM layoff_cleaned3
WHERE industry IS NULL 
OR industry ='';

SELECT *
FROM layoff_cleaned3
WHERE company = "Airbnb";


SELECT T1.company, T1.location, T1.industry,
T2.company, T2.location, T2.industry
FROM layoff_cleaned3 T1
JOIN layoff_cleaned3 T2
	ON T1.company = T2.company
  WHERE (T1.industry IS NULL OR T1.industry = '') AND T2.industry IS NOT NULL;
  
UPDATE layoff_cleaned3
SET industry = null
WHERE industry = '';
  

UPDATE layoff_cleaned3 T1
JOIN layoff_cleaned3 T2
ON T1.company = T2.company
SET T1.industry = T2.industry
WHERE T1.industry IS NULL  
AND T2.industry IS NOT NULL;

SELECT *
FROM layoff_cleaned3
WHERE total_laid_off is NULL AND percentage_laid_off IS NULL;

DELETE
FROM layoff_cleaned3
WHERE total_laid_off is NULL AND percentage_laid_off IS NULL;

UPDATE layoff_cleaned3
SET `date` = str_to_date(`date`, "%m/%d/%Y");

ALTER TABLE layoff_cleaned3
MODIFY column `date` DATE;

ALTER TABLE layoff_cleaned3
DROP column Row_num;

SELECT *
FROM layoff_cleaned3;