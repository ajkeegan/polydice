\name{diceset}
\alias{diceset}
\alias{d4}
\alias{d6}
\alias{d8}
\alias{d10}
\alias{d12}
\alias{d100}
\title{Roll specific dice in a seven-dice set}
\usage{
  d4(number = 1, func = identity)
  d6(number = 1, func = identity)
  d8(number = 1, func = identity)
  d10(number = 1, func = identity)
  d12(number = 1, func = identity)
  d20(number = 1, func = identity)
  d100(number = 1, func = identity)
}
\description{
  The \code{d4} function rolls \code{number} dice with 4 faces,  the \code{d6} function roll \code{number} dice with 6 faces, and so on.

  Each die face has an equal chance of being rolled.

  Returns a vector of dice rolls.

  Optionally specifiy an R function to perform on the roll and return that result. Suggested functions are \code{sum()},  \code{min()}, and  \code{max()}.
}
\arguments{
  \item{number}{How many dice to roll, single die by default}

  \item{func}{Optional R function to apply to all of the dice rolled}
}
\examples{
  d20() # Rolls a d20
  d20(2, max) # Rolls d20 with advantage
  d8(6, sum) # For a fireball, rolls 8 six-sided dice (8d6), and adds them up.
}
\details{
  Wrapper function for \code{dice()}.
}
