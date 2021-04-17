library(plotly)
mtcars %>%
  highlight_key(~cyl) %>%
  plot_ly(
    x = ~wt, y = ~mpg, text = ~cyl, mode = "markers+text",
    textposition = "top", hoverinfo = "x+y"
  ) %>%
  highlight(on = "plotly_hover", off = "plotly_doubleclick")

# load the `txhousing` dataset
data(txhousing, package = "ggplot2")

# declare `city` as the SQL 'query by' column
tx <- highlight_key(txhousing, ~city)

# initiate a plotly object
base <- plot_ly(tx, color = I("black"))

# create a time series of median house price
base %>%
  group_by(city) %>%
  add_lines(x = ~date, y = ~median)

base %>%
  add_lines(
    x=~date, y=~median, split=~city
  ) -> time_series

highlight(
  time_series,
  on = "plotly_click",
  selectize = TRUE,
  persistent = TRUE, # multiple click-select allowed -- no need to hold shift key
  dynamic = TRUE
)
