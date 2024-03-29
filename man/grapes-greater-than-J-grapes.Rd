% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/piper.R
\name{\%>J\%}
\alias{\%>J\%}
\title{Language piper for julia language.}
\usage{
obj \%>J\% func_call
}
\arguments{
\item{obj}{the object to pass to the piper.}

\item{func_call}{the impartial julia function call.}
}
\description{
The experimental language piper for julia language.
}
\examples{
if (identical(Sys.getenv("AUTO_JULIA_INSTALL"), "true")) { ## julia_setup is quite time consuming
  ## doing initialization and automatic installation of Julia if necessary
  julia_setup(installJulia = TRUE)
  2 \%>J\% sqrt
  3 \%>J\% log(2)
}

}
