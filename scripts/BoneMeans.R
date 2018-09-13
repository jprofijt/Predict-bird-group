# Copyright (c) 2018 Jouke Profijt
# Licensed under GPLv3, see LICENSE

# Will calculate means for all bones separated by their ecological groups.

means <- list()

BoneMeans <- function(data) {
  for(t in levels(unique(data$type))){
    means[[t]] <- colMeans(data[data$type == t,2:11])
  }
  return(means)
}
