load("boats.RData")

data2 <- data |>
  group_by(WaterConditions) |>
  summarize(total_deaths = sum(NumberDeaths, na.rm = TRUE)) |>
  arrange(desc(total_deaths))

data2 <- data2 |>
  mutate(WaterConditions = fct_reorder(WaterConditions, total_deaths, .desc = TRUE)) |>
  slice_head(n = 5)

p <- ggplot(data2, aes(x = WaterConditions, y = total_deaths)) +
  geom_col(aes(fill = WaterConditions)) +
  scale_fill_viridis_d("Water Condition") +
  labs(
    x = "Water Condition",
    y = "Fatalities",
    title = "Fatalities by Condition - 2014 to 2022"
  ) +
  theme_classic() +
  theme(
    legend.position = "none",
    axis.text.x = element_text(angle = 45, hjust = 1)  # Tilts the labels
  )

ggsave(
  "graphs/water_conditions.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)