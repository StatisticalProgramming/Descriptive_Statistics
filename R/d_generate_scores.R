#**************************************************************************
# Title: Generate class scores data
# Author: William Murrah
# Description: Generate fake test score data for tutorials on frequencies.
#**************************************************************************

set.seed(12345)
scores <- data.frame(scores = round(rnorm(20, 80, 12)))
scores[scores$scores > 100, ] <- 100
write.csv(scores, file = "data/scores.csv", row.names = FALSE)
 
score_range <- .bincode(scores$scores, c(59, 69, 79, 89))
a