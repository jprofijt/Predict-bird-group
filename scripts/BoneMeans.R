# Copyright (c) 2018 Jouke Profijt
# Licensed under GPLv3, see LICENSE

# Will calculate means for all bone lenghts and diameters separated by their ecological groups.


BoneMeans <- function(data) {
  length.means <- c()
  diameter.means <- c()
  for(t in data$id){
    length <- c(2,4,6,8,10)
    diameter <- c(3,5,7,9,11)
    length.value <- mean(as.numeric(data[data$id == t, length]))
    length.means <- append(length.means, length.value)
    diameter.value <- mean(as.numeric(data[data$id == t, diameter]))
    diameter.means <- append(diameter.means, diameter.value)
  
  }
  data$length.mean <- length.means
  data$diameter.mean <- diameter.means
  return(data)
}
