# Unsupervised Learning with R 

## Project Objectives
The goal of this project was to explore how unsupervised machine learning can identify patterns and similarities within a dataset without relying on predefined labels during the clustering process.
Using the Palmer Penguins dataset, the project explores how physical measurements can be used to group observations through hierarchical clustering.
Specific objectives include:
- Understand the fundamentals of unsupervised learning.
- Apply data preprocessing and feature scaling.
- Explore similarities between observations using Euclidean distance.
- Implement hierarchical clustering using complete linkage.
- Visualize cluster relationships using dendrograms and scatterplots.
- Compare the resulting clusters with the original penguin species labels.
## why Hierarchical Clustering

Hierarchical clustering was selected because it provides a way to explore relationships between observations and organize similar data points into groups.
Unlike supervised learning, this approach does not require predefined target labels to form clusters.
The dendrogram provides a visual representation of how observations are progressively grouped based on their distances, making it useful for exploring patterns within the dataset.

## Datasets 
1. Fish Dataset
   - contains measurements of different fish species
   - Numerical features include weight, length, height and  width.
   - The species column is excluded during clustering and used afterward to compare    species across the resulting cluster
   - Source (https://www.kaggle.com/datasets/aryansingh2001/fish-csv)
     
2. Palmer Penguins Datase
   - Uses the palmer penguins dataset though the palmerpenguins R package
   - Numerical features include bill length, bill depth, flipper length, and body mass
   - the species column is excluded during clustering and used afterward to compare species across clusters
   - Source: https://allisonhorst.github.io/palmerpenguins/

## Methodology 
1. Load and inspect the dataset.
2. Prepare the numerical features for clustering.
3. Scale the selected features.
4. Calculate Euclidean distances.
5. Perform hierarchical clustering using complete linkage.
6. Visualize the results using dendrograms.
7. Assign observations to clusters using cutree().
8. Compare cluster assignments with the original species labels.


## Tools and Libraries 
* R - Data analysis and clustering 
* ggplot2 – Data visualization
* dplyr – Data manipulation
* palmerpenguins – Penguin dataset
* RStudio – Development environment

## Acknowledgments
This project was completed as part of the Nvolve Scholars Program and explores foundational concepts in unsupervised machine learning and data analysis.

## Visualizations 
Palmer Penguins Dataset

The hierarchical clustering analysis used four numerical features:
Bill length (mm)
Bill depth (mm)
Flipper length (mm)
Body mass (g)

The four features were scaled before calculating Euclidean distances. Complete-linkage hierarchical clustering was then applied, and the observations were divided into three clusters.

1. Hierarchical Clustering Dendrogram

The dendrogram illustrates how penguin observations are grouped based on similarities across the selected numerical features. The red rectangles highlight the three selected clusters.  

2. Flipper Length vs. Body Mass
This scatterplot displays the cluster assignments based on flipper length and body mass, with colors representing the three clusters

3. Bill Length vs. Bill Depth

This scatterplot compares the cluster assignments with the original penguin species labels. It provides another perspective on how the observations are distributed across the clusters.

## Key Learning Outcomes

Through this project, I developed a better understanding of:

- How unsupervised learning identifies patterns without predefined target labels.
- How feature selection and scaling influence distance-based algorithms.
- How Euclidean distance measures similarities between observations.
- How complete linkage determines relationships between clusters.
- How dendrograms represent hierarchical relationships.
- How cluster assignments can be compared with existing categorical labels without using those labels during model training.

This project helped strengthen my understanding of the relationship between mathematical concepts, data preprocessing, and machine learning techniques.



