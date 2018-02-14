# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

dice <- function(number, side, func = identity) {
  # function that rolls number d side dice
  # optional argument to add a function

  if (sum(number <= 0) > 0) {
    stop("Number of dice must be positive")
  } else if (sum(side <= 0) > 0){
    stop("Number of die faces must be positive")
  }
  roll <- sample(1:side, number, replace = TRUE)

  func(roll)
}

#wrapper functions for typical 7 sided polyhedral dice set

d4 <- function(number = 1, func = identity) {
  dice(number, 4, func = func)
}

d6 <- function(number = 1, func = identity) {
  dice(number, 6, func = func)
}

d8 <- function(number = 1, func = identity) {
  dice(number, 8, func = func)
}

d10 <- function(number = 1, func = identity) {
  dice(number, 10, func = func)
}

d12 <- function(number = 1, func = identity) {
  dice(number, 12, func = func)
}

d20 <- function(number = 1, func = identity) {
  dice(number, 20, func = func)
}

d100 <- function(number = 1, func = identity) {
  dice(number, 100, func = func)
}
