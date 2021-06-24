#' Color palette for GMDAC visualization
#'@param ... name of the colours from the gmdac pallete
#'@return colors passes to \code{colors_gmdac}
#'@examples
#'# get the names of all the colors in the palette:
#'names(colors_gmdac())
#'get a color:
#'colors_gmdac("blue_ligth")
#'get two colors:
#'colors_gmdac(c("blue_ligth", "red"))
#'@author Murtiza Numamat (murtiza.nurmamat@gmail.com)
#'Andres Arau (jarau@iom.int)


#Vector of colors

IOM_colors <- c(
  #blues ----------------------------------------
  `blue_ligth`     = "#418FDE",
  `blue_dark`      = "#0033A0",
  `blue_sdg_ligth` = '#27BFE6',
  `blue_IOM`       = "#0033A1",


  #green ---------------------------------------------------------------
  `green`          = "#4CA146",
  `green_ming`     = "#5CB8B2",
  `green_sdg_brigth` = "#59BA47",
  `green_sdg_dark`  =  "#407F46",

  #oranges -----------------------------------------------

  `orange`         = "#FF671F",
  `orange_sdg`     = "#EF402D",
  `orange_sdg_light` = "#F26A2E",


  #pink -----------------------------------------------------

  `pink_sdg`       = "#E01483",

  #purple -----------------------------------------------

  `purple_sdg `    = "#A31C44",

  #reds =============================================
  `red`            = "#D22630",
  `red_sdg_dark`   = "#C7212F",
  `red_sdg_bright` = "#E5233D",

  #yellows ---------------------------------------------
  `yellow`         = "#FFB81C",
  `yellow_sdgs`    = '#FBC412'

  )



#function to return colors
colors_gmdac <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (IOM_colors)

  IOM_colors[cols]
}


#pallete of colors
IOM_pallette <- list(
  `primary` = colors_gmdac("dark blue"),
  `secondary` = colors_gmdac("light blue", "yellow", "mint green", "orange", "red")
)



#Function to return pallette
palette_gmdac <- function(palette = "primary", reverse = FALSE, ...) {
  pal <- IOM_pallette[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}



#function to return scales
palete_scale_gmdac <- function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_gmdac(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("IOM_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}



#FUnction to retun scales
palette_discrete_gmdac <- function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_gmdac(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("IOM_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
