library(xaringanthemer)

# http://urbaninstitute.github.io/graphics-styleguide/

colors <- c(
  blue = "#1277a7",
  gray = "#d2d2d2",
  white = "#ffffff",
  black = "#000000",
  green = "#367b51",
  salmon = "#eb6a60",
  turquoise = "#4d8984",
  cold = "#61acf0", # blue
  fat = "#f0a561", # orange
  acid = "#cbd20a", # lime
  heat = "#e74a2f", # red
  red = "#f34213",
  purple = "#3e2f5b",
  orange = "#ff8811",
  yellow = "#fdbf11"
)

xaringanthemer::style_duo(
  # primary color
  primary_color = "#d2d2d2",
  header_color = "#1277a7",
  text_color = "#000000",

  # secondar y color
  secondary_color = "#1277a7",
  inverse_header_color = "#ffffff",
  inverse_text_color = "#d2d2d2",

  # fonts
  header_font_google = google_font("Martel", "300", "400"),
  text_font_google = google_font("Lato"),
  code_font_google = google_font("Fira Mono"),
  colors = colors,
)
