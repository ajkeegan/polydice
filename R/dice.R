# These functions simulate dice rolls for RPGs
# I created this as an exercise for learning how to use github in RStudio

# The dice function is a generic wrapper for sample()

# d4(), d6(), etc are wrappers for dice() for dice with a specific number of sides

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
