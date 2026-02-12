
classic_plus <- function() {
  theme_classic()+
    theme(
      # add border 1)
      #panel.border = element_rect(colour = "blue", fill = NA, linetype = 2),
      # color background 2)
      #panel.background = element_rect(fill = "aliceblue"),
      # modify grid 3)
      #panel.grid.major.x = element_line(colour = "steelblue", linetype = 3, size = 0.5),
      #panel.grid.minor.x = element_blank(),
      #panel.grid.major.y =  element_line(colour = "steelblue", linetype = 3, size = 0.5),
      #panel.grid.minor.y = element_blank(),
      # modify text, axis and colour 4) and 5)
      axis.text = element_text(colour = "black",size=15),
      axis.title = element_text(colour = "black",size=19),
      #axis.ticks = element_line(colour = "steelblue"),
      # legend at the bottom 6)
      legend.position = "none",
      plot.title = element_text(size=22)
    )
}


safe_colorblind_palette <- c("#88CCEE", "#CC6677", "#DDCC77", "#117733", "#332288", "#AA4499", "#44AA99", "#999933", "#882255", "#661100", "#6699CC", "#888888")

