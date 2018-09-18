# Copyright (c) 2018 Jouke Profijt
# Licensed under GPLv3, see LICENSE

# Will calculate means for all bones separated by their ecological groups.

means <- c()
BoneMeans <- function(data) {
  for(t in data$id){
    value <- mean(as.numeric(data[data$id == t, 2:11]))
    means <- append(means, value)
    
  
  }
  data$means <- means
  return(data)
}
