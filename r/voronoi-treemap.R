library(voronoiTreemap)

# example from: https://github.com/uRosConf/voronoiTreemap

# read in data  -- columns need to be h1 (highest level hierarchy), h2, h3, color, weight (value) and codes (the text labels)
df <- read.csv('religion-clean.csv')

# build chart
plot <- vt_export_json(vt_input_from_df(df))
vt_d3(plot)

# export to webpage in the viewer > save as PDF > move to Illustrator