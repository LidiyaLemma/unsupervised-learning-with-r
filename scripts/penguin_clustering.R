
# Hierarchical Clustering of Penguin Data

library(ggplot2)
library(dplyr)
library(palmerpenguins)

# 1. Loading the dataset

data("penguins")

# 2. Checking if the dataset is loaded

head(penguins)
names(penguins)

# 3. Removing rows with missing numeric measurements

penguins_clean <- penguins %>%
  filter(complete.cases(
    bill_length_mm,
    bill_depth_mm,
    flipper_length_mm,
    body_mass_g
  ))

# Check the number of rows
nrow(penguins)
nrow(penguins_clean)

# 4. Select numeric features for clustering
# Species is not included in the clustering features.
# It will be used later to color the plots.

penguins_features <- penguins_clean %>%
  select(
    bill_length_mm,
    bill_depth_mm,
    flipper_length_mm,
    body_mass_g
  )

# 5. Scale the numeric features

penguins_scaled <- scale(penguins_features)

# 6. Calculate the distance matrix

penguins_dist <- dist(penguins_scaled)

# 7. Perform hierarchical clustering

penguins_hc <- hclust(
  penguins_dist,
  method = "complete"
)

# 8. Plot the dendrogram

plot(
  penguins_hc,
  labels = FALSE,
  main = "Hierarchical Clustering of Penguins",
  xlab = "Penguin Observations",
  ylab = "Distance"
)

# 9. Divide the tree into clusters

k_penguins <- 3

penguins_clusters <- cutree(
  penguins_hc,
  k = k_penguins
)

# Highlight the clusters on the dendrogram

rect.hclust(
  penguins_hc,
  k = k_penguins,
  border = "red"
)

# Add cluster assignments to the cleaned dataset

penguins_clean$Cluster <- as.factor(penguins_clusters)

# Examine cluster assignments

head(penguins_clean)

# Count observations in each cluster

table(penguins_clean$Cluster)

# 10. Scatterplots

# Plot 1: Flipper length versus body mass, colored by cluster

ggplot(
  penguins_clean,
  aes(
    x = flipper_length_mm,
    y = body_mass_g,
    color = Cluster
  )
) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Penguin Clusters",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    color = "Cluster"
  ) +
  theme_minimal()

# Plot 2: Flipper length versus body mass
# Shape represents cluster; color represents species

ggplot(
  penguins_clean,
  aes(
    x = flipper_length_mm,
    y = body_mass_g,
    shape = Cluster,
    color = species
  )
) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Penguin Clusters by Species",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    shape = "Cluster",
    color = "Species"
  ) +
  theme_minimal()

# Plot 3: Bill length versus bill depth
# Shape represents cluster; color represents species

ggplot(
  penguins_clean,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    shape = Cluster,
    color = species
  )
) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Penguin Clusters: Bill Measurements",
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    shape = "Cluster",
    color = "Species"
  ) +
  theme_minimal()

# 11. Examine how the clusters correspond
# to the penguins' actual species.

table(
  Cluster = penguins_clean$Cluster,
  Species = penguins_clean$species
)

