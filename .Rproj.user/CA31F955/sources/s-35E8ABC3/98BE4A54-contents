# Title: Shot Charts

# Description: Codes for the creation of shot charts

# Inputs:
# • nba-court.jpg

# Outputs:
# • andre-iguodala-shot-chart.pdf
# • draymond-green-shot-chart.pdf
# • kevin-durant-shot-chart.pdf
# • klay-thompson-shot-chart.pdf
# • stephen-curry-shot-chart.pdf

library (jpeg, grid, ggplot2)

download.file(url='https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/images/nba-court.jpg', destfile = '../images/nba-court.jpg')

# court image (to be used as background of plot)
court_file <- "../images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

#create shot charts for each player

iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

#save shot charts as pdfs
pdf(file='../images/andre-iguodala-shot-chart.pdf', width=6.5, height=5)
iguodala_shot_chart
dev.off()

pdf(file='../images/draymond-green-shot-chart.pdf', width=6.5, height=5)
green_shot_chart
dev.off()

pdf(file='../images/kevin-durant-shot-chart.pdf', width=6.5, height=5)
durant_shot_chart
dev.off()

pdf(file='../images/klay-thompson-shot-chart.pdf', width=6.5, height=5)
thompson_shot_chart
dev.off()

pdf(file='../images/stephen-curry-shot-chart.pdf', width=6.5, height=5)
curry_shot_chart
dev.off()

#Create one graph, using facetting, to show all the shot charts in one image, save as pdf
pdf(file='../images/gsw-shot-charts.pdf', width=8, height=7)
ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts (2016 season)') +
  theme_minimal()+facet_wrap(~player_name)
dev.off()