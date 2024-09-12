load("boats.RData")

data4 <- data |>
  group_by(AccidentEvent1) |>
  summarize(total_deaths = sum(NumberDeaths, na.rm = TRUE)) |>
  arrange(desc(total_deaths))

data4 <- data4 |>
  mutate(AccidentEvent1 = fct_reorder(AccidentEvent1, total_deaths, .desc = TRUE)) |>
  slice(-1) |>
  slice_head(n = 5)

p <- ggplot(data4, aes(x = AccidentEvent1, y = total_deaths)) +
  geom_col(aes(fill = AccidentEvent1)) +
  scale_fill_viridis_d("AccidentEvent1") +
  labs(
    x = "Primary Cause",
    y = "Fatalities",
    title = "Fatalities by Event - 2014 to 2022"
  ) +
  theme_classic() +
  theme(
    legend.position = "none",
    axis.text.x = element_text(angle = 25, hjust = 1)  # Tilts the labels
  )

ggsave(
  "graphs/event.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)