gapminder_1997 <- read_csv("gapminder_1997.csv")

# Plotting
ggplot(data = gapminder_1997) + 
  aes(x = gdpPercap,
      y = lifeExp,
      color = continent,
      size = pop/1000000) + 
  geom_point() +
  scale_color_brewer(palette = "Set1",) +
  labs(x = "GDP Per Capita",
       y = "Life Expectancy", 
       title = "Do people in wealthy countries live longer?",
       size = "Population (in millions)",
       color = "Continent")