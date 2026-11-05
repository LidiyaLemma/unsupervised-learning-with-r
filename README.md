# Unsupervised Learning with R 
Project Overview
This project explores unsupervised machine learning using hierarchical clustering in R. It uses two datasets—fish measurements and Palmer Penguins to explore patterns and similarities among observations based on numerical features.
The project focuses on data preprocessing, feature scaling, distance calculations, hierarchical clustering, and interpreting cluster assignments.

Datasets 
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

Methodology 
1. Load and inspect the dataset.
2. Prepare the numerical features for clustering.
3. Scale the selected features.
4. Calculate Euclidean distances.
5. Perform hierarchical clustering using complete linkage.
6. Visualize the results using dendrograms.
7. Assign observations to clusters using cutree().
8. Compare cluster assignments with the original species labels.


Tools and Libraries 
* R - Data analysis and clustering 
* ggplot2 – Data visualization
* dplyr – Data manipulation
* palmerpenguins – Penguin dataset
* RStudio – Development environment

Acknowledgments
This project was completed as part of the Nvolve Scholars Program and explores foundational concepts in unsupervised machine learning and data analysis.
