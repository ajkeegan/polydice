\name{dice}
\alias{dice}
\title{Generic polyhedral dice rolling function}
\usage{
dice(number, side, func = identity)
}
\description{
Rolls \code{number} dice with faces 1, 2, 3, ... , \code{side}. Each die face has an equal chance of being rolled.

Returns a vector of dice rolls.

Optionally specifiy an R function to perform on the roll and return that result. Suggested functions are \code{sum()},  \code{min()}, and  \code{max()}.
}
\arguments{
  \item{number}{How many dice to roll}

  \item{side}{How many sides the dice have}

  \item{func}{Optional R function to apply to all of the dice rolled}
}
\examples{
dice(8, 6) # Rolls 8 six-sided dice (8d6)
dice(8, 6, sum) # Rolls 8 six-sided dice (8d6), and adds them up.
dice(2, 20, max) # Rolls d20 with advantage
}
