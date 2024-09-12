load("boats.RData")

data1 <- data |>
    group_by(DayofWeek) |>
    summarize(total_deaths = sum(NumberDeaths, na.rm = TRUE)) |>
    arrange(desc(total_deaths))

data1 <- data1 |>
  mutate(DayofWeek = fct_reorder(DayofWeek, total_deaths, .desc = TRUE))

p <- ggplot(data1, aes(x = DayofWeek, y = total_deaths)) +
  geom_col(aes(fill = DayofWeek)) +
  scale_fill_viridis_d("Day of Week") +
  labs(
    x = "Day of Week",
    y = "Fatalities",
    title = "Fatalities by Day - 2014 to 2022"
  ) +
  theme_classic() +
  theme(
    legend.position = "none",
    axis.text.x = element_text(angle = 45, hjust = 1)  # Tilts the labels
  )

ggsave(
  "graphs/days.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)