############################
####                    ####
####    Cover Type      ####
####                    ####
############################
library(RWeka)


train <- read.csv("/Users/Walter/GitHub/bennette.github.io/kaggle/forestcover/train.csv")
colnames(train)

summary(train)

############################
####                    ####
####     Variables      ####
####                    ####
############################

# Elevation - height from sea level 
#             column # == 2
#
# Aspect - aspect in degrees azimuth (no idea here)
#             column # == 3
#
# Slope - slope in degrees (guessing slope of the land)
#             column # == 4
#
# Horizontal_Distance_To_Hydrology - horizontal distance to nearest surface water
#             column # == 5
#
# Vertical_Distance_To_Hydrology - vertical distance to surface water
#             column # == 6
#
# Horizontal_Distance_To_Roadways - horizontal distance to nearest roadway
#             column # == 7
#
# Hillshade_9am - Hillshade index at 9am, summer
#             column # == 8
#
# Hillshade_Noon - Hillshade index at noon, summer
#             column # == 9
#
# Hillshade_3pm - Hillshade index at 3am, summer
#             column # == 10
#
# Horizontal_Distance_To_Fire_Points - horizontal distance to nearest forest fire
#             column # == 11
#
# Wilderness Area - Wilderness area designation (may have more than one, so binary columns)
#             column # == 12 to 15
#
# Soil_Type - Soil type designation (40 possilbe values)
#             column # == 16 to 55
#
# Cover_Type - cover type 7 values (is the target)
#             column # == 56
#



#Load data
train <- read.csv("/Users/Walter/GitHub/bennette.github.io/kaggle/forestcover/train.csv") 

#######
#######  Is there ever more than one wilderness area? No!
#######  Is there ever less than one wilderness area? No!
#######  Is there ever more than one soil type? No!
#######  Is there ever less than one soil type? No!
#######

wild <- rowSums(train[,12:15])

max(wild)
min(wild)

soil <- rowSums(train[,16:55])

max(soil)
min(soil)

########
######## Need to create one wilderness area and soild type variable
########
train <- read.csv("/Users/Walter/GitHub/bennette.github.io/kaggle/forestcover/train.csv")

# These lines convert binary indicator variables to single factors.
# Apply takes a row of the dataframe and applies a function 
# that asks which columns are 1 for that row (and section)
# of the data frame.
# Then the labels are named what the columns were named.
# Have the caveat that some columns may not appear
# want to make sure we don't include those names!
train$Wilderness_Area <- factor(apply(train[,c(12:15)], 1, function(x) which(x==1)),
                                labels = colnames(train[,c(12:15)])[colSums(train[,c(12:15)])>0])


train$Soil_Type <- factor(apply(train[,c(16:55)], 1, function(x) which(x==1)),
                                labels = colnames(train[,c(16:55)])[colSums(train[,c(16:55)])>0])


train <- train[, -c(12:55)]                       # Remove columns that were reduced
train <- train[, c(1:11, 13, 14, 12)]             # Put cover type on the end
train$Cover_Type <- as.factor(train$Cover_Type)   # Make cover type a factor



write.arff(train[,-1], file = "/Users/Walter/GitHub/bennette.github.io/kaggle/forestcover/train_worked.arff")







