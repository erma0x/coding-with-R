# THEME 
heme_gray()
theme_bw()
theme_linedraw()
theme_light()
theme_minimal()
theme_classic()
theme_void()
labs(title="bw Theme")

# LEGEND 
theme(legend.position="top") + labs(title="legend.position='top'") 
p2 <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) # La Legenda sta nel aes color
ggsave("myggplot.png")  # saves the last plot.
