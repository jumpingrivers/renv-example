library(ggvis)

# Create a data frame
data <- data.frame(
  x = 1:5,
  y = c(3, 2, 5, 4, 6),
  label = letters[1:5]
)

# Create a ggvis plot
plot <- data %>%
  ggvis(~x, ~y) %>%
  layer_points() %>%
  layer_text(
    text := ~label,
    fontSize := 12,
    baseline := "middle",
    dy := -10
  )

# Render the plot
plot
