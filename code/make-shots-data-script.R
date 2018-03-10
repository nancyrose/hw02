# Title: Data Preparation for shots-data.csv

# Description: Data preparation to create a csv data file shots-data.csv that will contain the required variables to be used in the visualization phase

# Inputs:
# • andre-iguodala.csv
# • draymond-green.csv
# • kevin-durant.csv
# • klay-thompson.csv
# • stephen-curry.csv

# Outputs:
# • andre-iguodala-summary.txt
# • draymond-green-summary.txt
# • kevin-durant-summary.txt
# • klay-thompson-summary.txt
# • stephen-curry-summary.txt
# • shots-data-summary.txt
# • shots-data.csv

# Read in the 5 data sets
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)

# Add a column name to each imported data frame, that contains the name of the corresponding player
iguodala <- data.frame(player_name='Andre Iguodala', iguodala)
green <- data.frame(player_name='Draymond Green', green)
durant <- data.frame(player_name='Kevin Durant', durant)
thompson <- data.frame(player_name='Klay Thompson', thompson)
curry <- data.frame(player_name='Stephen Curry', curry)

# Change the original values of shot_made_flag to more descriptive values
iguodala$shot_made_flag[iguodala$shot_made_flag=='n'] <- 'missed shot'
iguodala$shot_made_flag[iguodala$shot_made_flag=='y'] <- 'made shot'

green$shot_made_flag[green$shot_made_flag=='n'] <- 'missed shot'
green$shot_made_flag[green$shot_made_flag=='y'] <- 'made shot'

durant$shot_made_flag[durant$shot_made_flag=='n'] <- 'missed shot'
durant$shot_made_flag[durant$shot_made_flag=='y'] <- 'made shot'

thompson$shot_made_flag[thompson$shot_made_flag=='n'] <- 'missed shot'
thompson$shot_made_flag[thompson$shot_made_flag=='y'] <- 'made shot'

curry$shot_made_flag[curry$shot_made_flag=='n'] <- 'missed shot'
curry$shot_made_flag[curry$shot_made_flag=='y'] <- 'made shot'

# Add a column minute that contains the minute number where a shot occurred
minute <- (iguodala$period*12)-iguodala$minutes_remaining
iguodala <- data.frame(iguodala, minute)

minute <- (green$period*12)-green$minutes_remaining
green <- data.frame(green, minute)

minute <- (durant$period*12)-durant$minutes_remaining
durant <- data.frame(durant, minute)

minute <- (thompson$period*12)-thompson$minutes_remaining
thompson <- data.frame(thompson, minute)

minute <- (curry$period*12)-curry$minutes_remaining
curry <- data.frame(curry, minute)

# Use sink() to send the summary() output of each imported data frame into individuals text files
sink(file = '../output/andre-iguodala-summary.txt')
summary(iguodala)
sink()

sink(file = '../output/draymond-green-summary.txt')
summary(green)
sink()

sink(file = '../output/kevin-durant-summary.txt')
summary(durant)
sink()

sink(file = '../output/klay-thompson-summary.txt')
summary(thompson)
sink()

sink(file = '../output/stephen-curry-summary.txt')
summary(curry)
sink()

# Use the row binding function rbind() to stack the tables into one single data frame
shots_data <- rbind(iguodala, green, durant, thompson, curry)

#Export (i.e. write) the assembled table as a CSV file shots-data.csv inside the folder data/
write.csv(shots_data, '../data/shots-data.csv')

#Use sink() to send the summary() output of the assembled table
sink(file='../output/shots-data-summary.txt')
summary(shots_data)
sink()