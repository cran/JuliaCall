% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interface.R
\name{call}
\alias{call}
\alias{julia_do.call}
\alias{julia_call}
\title{Call julia functions.}
\usage{
julia_do.call(
  func_name,
  arg_list,
  need_return = c("R", "Julia", "None"),
  show_value = FALSE
)

julia_call(
  func_name,
  ...,
  need_return = c("R", "Julia", "None"),
  show_value = FALSE
)
}
\arguments{
\item{func_name}{the name of julia function you want to call.
If you add "." after `func_name`,
the julia function call will be broadcasted.}

\item{arg_list}{the list of the arguments you want to pass to the julia function.}

\item{need_return}{whether you want julia to return value as an R object,
a wrapper for julia object or no return.
The value of need_return could be TRUE (equal to option "R") or FALSE (equal to option "None"),
or one of the options "R", "Julia" and "None".}

\item{show_value}{whether to invoke the julia display system or not.}

\item{...}{the arguments you want to pass to the julia function.}
}
\description{
\code{julia_do.call} is the \code{do.call} for julia.
And \code{julia_call} calls julia functions.
For usage of these functions, see documentation of arguments and examples.
}
\details{
Note that named arguments will be discarded if the call uses dot notation,
  for example, "sqrt.".
}
\examples{

if (identical(Sys.getenv("AUTO_JULIA_INSTALL"), "true")) { ## julia_setup is quite time consuming
  ## doing initialization and automatic installation of Julia if necessary
  julia_setup(installJulia = TRUE)
  julia_do.call("sqrt", list(2))
  julia_call("sqrt", 2)
  julia_call("sqrt.", 1:10)
}

}
