library(flametree)
library(ggplot2)

# pick some colours
shades <- c("#74115f", "#f3e3e2")

# data structure defining the trees
dat <- flametree_grow(time = 10, trees = 10)

# draw the plot
dat %>% 
  flametree_plot(
    background = "white",
    palette = shades, 
    style = "nativeflora"
  )

flametree_save(last_plot(), 'erica.png')
