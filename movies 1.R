library(Hmisc)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(funModeling)
library(tidyverse)

# 1. Load data
data <- read.csv("movies_data.csv")
df_status(data)

# 2. Data cleaning remove percentage zero value
my_data = df_status(data)
arrange(my_data, -p_zeros) %>% select(variable, q_zeros,p_zeros)
vars_to_remove <- filter(my_data, p_zeros > 60) %>% .$variable
vars_to_remove
movies = select(data, -one_of(vars_to_remove))
df_status(movies)

# 3. EDA
#  Univariate analysis 
# numerical analysis: average of IMDb score 
ggplot(movies, aes(x = IMDb.score)) + 
  geom_histogram(fill = "skyblue", color = "black") +
  labs(title="Distribution of IMDb Scores",x="IMDb Score",y="Frequency" )

summary(movies)

# categorical analysis: Number of movies by genre 
ggplot(movies, aes(x = Genre)) + 
  geom_bar(fill = "blue", color = "black") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 12)) +
  labs(title = "Number of Movies per Genre",x="Genre",y="Count") 

# 4. Bivariate analysis
# categorical vs numerical: average box offfice per genre 
movies %>% 
  group_by(Genre) %>% 
  summarise(Average_Box_Office = mean(Box.Office)) %>% 
  ggplot(aes(x = Genre, y = Average_Box_Office)) +
  geom_bar(stat = "identity", fill = "tomato", color = "black") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 12)) +
  labs(title="Average Box Office Earnings per Genre", x="Genre", 
       y="Average Box Office Earnings")

# numerical vs numerical: 
## Numerical vs. Numerical: Relationship between Budget and Box Office Earnings
ggplot(movies, aes(x = Budget, y = Box.Office)) + 
  geom_point(color = "red", alpha = 0.6, size = 3) + 
  geom_smooth(method = "loess", color = "blue",size = 1.2) +
  ggtitle("Budget vs. Box Office Earnings") +
  xlab("Budget") +
  ylab("Box Office Earnings")

# 5. Data visualization 
ggplot(movies, aes(x = IMDb.score)) + 
  geom_histogram(fill = "pink", color = "black") +
  labs(title="Distribution of IMDb Scores",x="IMDb Score",y="Frequency" ) + 
  scale_x_continuous(breaks = seq(0,10,1)) +
  geom_vline(aes(xintercept = mean(IMDb.score)), color = "red", 
             linetype = "dashed", size = 1.5) 

top_genres <- data %>%
  count(Genre, sort = TRUE) %>%
  top_n(10, n)

ggplot(top_genres, aes(x = reorder(Genre, n), y = n, fill = Genre)) +
  geom_bar(stat = "identity", show.legend = FALSE) + 
  coord_flip() +
  labs(title = "Top 10 Movie Genres by Count", x="Genre",y="Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.text.x = element_text(size = 12),
        axis.text.y = element_text(size = 12)) +
  scale_fill_manual(values = c("Comedy"="#003300",
                               "Action"="#004F00",
                               "Drama"="#006400",
                               "Crime"="#007800",
                               "Adventure"="#009900",
                               "Biography"="#00AA00",
                               "Horror"="#00BB00",
                               "Animation"="#00CC00",
                               "Thriller"="#00DD00",
                               "Sci-Fi"="#00EE00"))

  
top_avg_box_office <- data %>% 
  group_by(Genre) %>%
  summarise(Average_Box_Office = mean(Box.Office)) %>%
  top_n(10, Average_Box_Office)
ggplot(top_avg_box_office, aes(x = reorder(Genre, Average_Box_Office), y = Average_Box_Office, fill = Average_Box_Office)) +
  geom_bar(stat = "identity", show.legend = FALSE) + 
  coord_flip() +  
  scale_y_continuous(labels = label_number(scale = 100e-8, suffix = "M")) +
  labs(title = "Top 10 Genres by Average Box Office Earnings",x="Genre",y="Average Box Office ($)") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.text.x = element_text(size = 12),
        axis.text.y = element_text(size = 12)) +
  scale_fill_gradient(low = "lightblue", high = "darkred")

ggplot(movies, aes(x = Budget, y = Box.Office)) +
  geom_point(color = "purple", alpha = 0.3) + 
  geom_smooth(color="yellow") +
  scale_y_continuous(labels = label_number(scale = 1e-9, suffix = "B")) +
  scale_x_continuous(labels = label_number(scale = 100e-8, suffix = "M")) +
  labs(title = "Budget vs Box Office Earnings",x ="Budget ($)", y="Box Office Earnings ($)") +
  theme_minimal() +  
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.text.x = element_text(size = 12),
        axis.text.y = element_text(size = 12))
