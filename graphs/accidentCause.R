load("boats.RData")

data3 <- data |>
  group_by(AccidentCause1) |>
  summarize(total_deaths = sum(NumberDeaths, na.rm = TRUE)) |>
  arrange(desc(total_deaths))

data3 <- data3 |>
  mutate(AccidentCause1 = fct_reorder(AccidentCause1, total_deaths, .desc = TRUE)) |>
  slice(-1) |>
  slice_head(n = 5)

p <- ggplot(data3, aes(x = AccidentCause1, y = total_deaths)) +
  geom_col(aes(fill = AccidentCause1)) +
  scale_fill_viridis_d("AccidentCause1") +
  labs(
    x = "Primary Cause",
    y = "Fatalities",
    title = "Fatalities by Cause - 2014 to 2022"
  ) +
  theme_classic() +
  theme(
    legend.position = "none",
    axis.text.x = element_text(angle = 45, hjust = 1)  # Tilts the labels
  )

ggsave(
  "graphs/cause.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)