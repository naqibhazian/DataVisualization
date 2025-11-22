# 🎬 Movie Industry Data Analysis & Visualization

A comprehensive data analysis project examining movie industry trends from 1930-2016, exploring the relationship between production budgets, box office earnings, genre popularity, and audience ratings using R and ggplot2.

![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=for-the-badge&logo=rstudio&logoColor=white)
![ggplot2](https://img.shields.io/badge/ggplot2-FF6F00?style=for-the-badge&logo=r&logoColor=white)
![tidyverse](https://img.shields.io/badge/tidyverse-1A162D?style=for-the-badge&logo=tidyverse&logoColor=white)

## 📋 Table of Contents
- [Overview](#overview)
- [Objectives](#objectives)
- [Dataset](#dataset)
- [Key Findings](#key-findings)
- [Analysis Methodology](#analysis-methodology)
- [Visualizations](#visualizations)
- [Technologies Used](#technologies-used)
- [Installation & Usage](#installation--usage)
- [Project Structure](#project-structure)
- [Target Audience](#target-audience)
- [Future Work](#future-work)
- [References](#references)

## 🎯 Overview

This project analyzes a comprehensive movie dataset from Kaggle containing information about films released between 1930 and 2016. The analysis explores key aspects of the film industry including:

- Average movie ratings and their distribution over time
- Genre popularity trends across different periods
- Financial performance analysis (budget vs. revenue)
- Factors influencing box office success

The findings provide actionable insights for movie producers, investors, critics, and industry stakeholders to make data-driven decisions.

**Course:** Data Analysis & Visualization (CSC 2823)  
**Institution:** Kolej Profesional MARA Beranang  
**Academic Session:** 3 2024/2025

## 🎬 Objectives

1. **Analyze Rating Trends**: Examine the distribution of IMDb scores to understand audience preferences and rating patterns
2. **Identify Popular Genres**: Determine which movie genres are most frequently produced and their evolution over time
3. **Evaluate Financial Performance**: Investigate revenue generation patterns across different genres
4. **Budget-Revenue Correlation**: Assess whether higher production budgets correlate with increased box office earnings

## 📊 Dataset

### Source
- **Platform**: [Kaggle - Movies Dataset](https://www.kaggle.com/datasets/delfinaoliva/movies)
- **Time Period**: 1930 - 2016
- **Total Records**: Movie information with multiple attributes

### Variables Used

**Included in Analysis:**
- **Genre**: Category of the film (Comedy, Action, Drama, etc.)
- **Budget**: Production and marketing costs
- **Box Office**: Revenue from ticket sales
- **IMDb Score**: Audience ratings (0-10 scale)

**Excluded from Analysis:**
- Movie title, director, actors
- Running time
- Actor/Director box office percentages
- Awards and nominations (Oscars, Golden Globes)
- Release year (for specific analyses)

### Justification
This dataset was selected because it:
- ✅ Contains both categorical and numerical variables for comprehensive analysis
- ✅ Includes financial metrics (budget and revenue) for profitability analysis
- ✅ Provides audience ratings (IMDb scores) for quality assessment
- ✅ Spans multiple decades for trend analysis
- ✅ Covers diverse genres for comparative studies

## 🔍 Key Findings

### 1. **IMDb Score Distribution**
- **Average Rating**: 6.48/10
- **Highest Rating**: 9.3/10
- **Lowest Rating**: 1.6/10
- **Insight**: Most movies receive moderate ratings, with very few achieving exceptional scores above 8.0 or falling below 3.0

### 2. **Genre Production Trends**
**Top 3 Most Produced Genres:**
1. **Comedy** - Highest production volume
2. **Action** - Second most common
3. **Drama** - Third most produced

**Least Produced:** Romance

**Insight**: The industry shows a strong preference for Comedy, Action, and Drama genres, likely due to broad audience appeal and commercial viability.

### 3. **Box Office Performance by Genre**
**Highest Earning Genre:** Animation
- Animation films demonstrate the highest average box office earnings
- Factors contributing to success:
  - Broad appeal to both children and adults
  - Strong franchise potential (Disney, Pixar, DreamWorks)
  - High merchandising revenue opportunities
  - International market appeal

**Other High Performers:** Adventure and Action genres

**Lowest Earning:** Documentary

### 4. **Budget vs. Revenue Relationship**
- **Positive Correlation**: Higher budgets generally lead to higher box office earnings
- **Not Linear**: The relationship is not perfectly proportional
- **Key Insight**: A large budget does NOT guarantee success
  - Some high-budget films underperform
  - Marketing, storytelling, and timing also critical
  - Strategic investment more important than budget size alone

## 🔬 Analysis Methodology

### Data Cleaning Process
1. **Missing Value Treatment**
   - Identified variables with >60% missing data
   - Removed problematic variables to avoid biased analysis
   - Retained essential variables for meaningful insights

2. **Data Preprocessing**
   - Handled zero values and outliers
   - Ensured data integrity for accurate analysis

### Analysis Techniques

#### 1. Univariate Analysis
**Numerical Analysis:**
- Distribution of IMDb scores using histograms
- Summary statistics (mean, median, min, max)

**Categorical Analysis:**
- Frequency distribution of movie genres
- Bar charts showing production volume per genre

#### 2. Bivariate Analysis
**Categorical vs. Numerical:**
- Average box office earnings per genre
- Genre-based performance comparison

**Numerical vs. Numerical:**
- Budget vs. Box Office scatter plot
- Correlation analysis with trend lines
- Regression analysis for relationship strength

## 📈 Visualizations

The project includes multiple professional visualizations created using ggplot2:

### 1. **Distribution of IMDb Scores**
- Histogram showing rating frequency
- Mean line indicating average score (6.48)
- Color: Pink bars with black borders
- Insight: Normal distribution centered around moderate ratings

### 2. **Top 10 Movie Genres by Count**
- Horizontal bar chart with gradient green colors
- Shows production volume hierarchy
- Clear visual distinction between genre popularity

### 3. **Average Box Office Earnings per Genre**
- Horizontal bar chart with gradient (lightblue to darkred)
- Y-axis formatted in millions ($M)
- Highlights Animation as top performer

### 4. **Budget vs. Box Office Earnings**
- Scatter plot with 300+ data points
- Purple points with 30% transparency
- Yellow LOESS trend line
- Axes formatted in millions/billions
- Shows positive but imperfect correlation

### Visualization Features
All charts include:
- ✅ Clear titles and axis labels
- ✅ Appropriate color schemes and contrast
- ✅ Professional themes (theme_minimal)
- ✅ Scaled axes for readability
- ✅ Statistical indicators (means, trends)

## 🛠️ Technologies Used

### Core Technologies
- **R (4.x+)** - Statistical computing and analysis
- **RStudio** - Integrated development environment

### R Packages
```r
library(Hmisc)          # Data analysis and manipulation
library(ggplot2)        # Advanced data visualization
library(ggthemes)       # Additional ggplot2 themes
library(dplyr)          # Data manipulation
library(funModeling)    # Exploratory data analysis
library(tidyverse)      # Data science workflow
```

### Key Functions Used
- `df_status()` - Data profiling and quality assessment
- `geom_histogram()` - Distribution visualization
- `geom_bar()` - Categorical data visualization
- `geom_point()` - Scatter plots
- `geom_smooth()` - Trend lines and regression
- `group_by() %>% summarise()` - Aggregation and grouping

## 📦 Installation & Usage

### Prerequisites
- R (version 4.0 or higher)
- RStudio (recommended)

### Setup Instructions

1. **Clone the repository**
```bash
git clone https://github.com/naqibhazian/DataVisualization.git
cd DataVisualization
```

2. **Install required packages**
Open R/RStudio and run:
```r
install.packages(c("Hmisc", "ggplot2", "ggthemes", "dplyr", "funModeling", "tidyverse"))
```

3. **Load the dataset**
Ensure `movies_data.csv` is in the working directory

4. **Run the analysis**
```r
source("movies 1.R")
```

### Expected Output
- Data cleaning summary statistics
- Multiple ggplot2 visualizations
- Console output with analysis results
- Summary statistics for key variables

## 📁 Project Structure

```
DataVisualization/
├── movies 1.R                  # Main R script with complete analysis
├── movies_data.csv             # Dataset (1930-2016 movies)
├── DAV final project.pdf       # Comprehensive analysis report
├── .gitignore                  # Git ignore rules
└── README.md                   # Project documentation
```

### File Descriptions

**movies 1.R**
- Complete analysis pipeline from data loading to visualization
- Well-commented code with section divisions
- Reproducible analysis workflow

**movies_data.csv**
- Source data from Kaggle
- Contains movie information across 86+ years
- Multiple categorical and numerical variables

**DAV final project.pdf**
- Detailed academic report
- Includes methodology, findings, and interpretations
- Visual evidence and statistical summaries

## 👥 Target Audience

### Primary Stakeholders

**1. Movie Productions & Producers**
- **Benefit**: Make informed decisions to avoid financial losses
- **Use Case**: Understand what drives movie success (genre, budget allocation)
- **Insight**: Focus on Animation, Adventure, and Action for higher returns

**2. Investors**
- **Benefit**: Maximize return on investment (ROI)
- **Use Case**: Identify profitable genres and budget strategies
- **Insight**: Higher budgets correlate with revenue but don't guarantee success

**3. Movie Critics & Influencers**
- **Benefit**: Shape public opinion with data-backed analysis
- **Use Case**: Determine if movies are overrated, underrated, or worth the hype
- **Insight**: Use IMDb score distribution as benchmark for quality assessment

**4. Data Analysts & Researchers**
- **Benefit**: Learn data visualization and analysis techniques
- **Use Case**: Reference implementation for similar projects
- **Insight**: Practical example of univariate and bivariate analysis

## 🎓 Learning Outcomes

This project demonstrates proficiency in:
- ✅ Statistical data analysis and interpretation
- ✅ Data cleaning and preprocessing techniques
- ✅ Exploratory Data Analysis (EDA)
- ✅ Univariate and bivariate analysis methods
- ✅ Data visualization with ggplot2
- ✅ R programming and package management
- ✅ Business intelligence and insights generation
- ✅ Technical report writing and documentation

## 🚀 Future Work

Potential enhancements and extensions:
- [ ] **Time Series Analysis**: Examine trends across different decades
- [ ] **Multivariate Analysis**: Include director/actor influence on success
- [ ] **Predictive Modeling**: Build ML models to predict box office success
- [ ] **Sentiment Analysis**: Analyze review text data for deeper insights
- [ ] **Interactive Dashboard**: Create Shiny app for dynamic exploration
- [ ] **Expanded Dataset**: Include streaming platform data (Netflix, Disney+)
- [ ] **Award Analysis**: Correlate critical acclaim with financial success
- [ ] **International Markets**: Compare performance across different regions

## 📚 References

1. GeeksforGeeks. (2024, October 3). Display an axis value in millions in ggplot using R. [Link](https://www.geeksforgeeks.org/display-an-axis-value-in-millions-in-ggplot-using-r/)

2. GeeksforGeeks. (2023, December 20). Histogram in R using ggplot2. [Link](https://www.geeksforgeeks.org/histogram-in-r-using-ggplot2/)

3. Pedersen, H. W. D. N. & Wickham, H. (n.d.). ggplot2: Elegant Graphics for Data Analysis (3e) - 11 Colour scales and legends. [Link](https://ggplot2-book.org/scales-colour)

4. R-Bloggers. (2024, April 24). A practical guide to selecting top N values by group in R. [Link](https://www.r-bloggers.com/2024/04/a-practical-guide-to-selecting-top-n-values-by-group-in-r/)

5. Kaggle. (n.d.). Movies Dataset. [Link](https://www.kaggle.com/datasets/delfinaoliva/movies)

## 👨‍💻 Developer

**Naqib Hazian**  
Diploma in Computer Science, Kolej Profesional MARA Beranang

- GitHub: [@naqibhazian](https://github.com/naqibhazian)
- LinkedIn: [Naqib Hazian](https://linkedin.com/in/naqibhazian)

## 📄 License

This project is open source and available for educational purposes under the MIT License.

## 🙏 Acknowledgments

- **Dr. Zalina Ayob & Mawar Widuri Bt Ab Halik** - Course instructors and project guidance
- **Kaggle Community** - For providing the comprehensive movies dataset
- **R Community** - For excellent documentation and package development
- **Kolej Profesional MARA Beranang** - Academic support and resources

---

⭐ **If you find this analysis helpful, please consider giving it a star!**

*Leveraging data to understand the business of entertainment* 🎬📊