
<!-- README.md is generated from README.Rmd. Please edit that file -->

# JuliaCall for Seamless Integration of R and Julia

[![Travis-CI Build
Status](https://travis-ci.org/Non-Contradiction/JuliaCall.svg?branch=master)](https://travis-ci.org/Non-Contradiction/JuliaCall)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/Non-Contradiction/JuliaCall?branch=master&svg=true)](https://ci.appveyor.com/project/Non-Contradiction/JuliaCall)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/JuliaCall)](https://cran.r-project.org/package=JuliaCall)
[![](https://cranlogs.r-pkg.org/badges/JuliaCall)](https://cran.r-project.org/package=JuliaCall)
[![](https://cranlogs.r-pkg.org/badges/grand-total/JuliaCall)](https://cran.r-project.org/package=JuliaCall)

**\[Table of Contents\]**
<!-- Table of contents generated generated by http://tableofcontent.eu -->

  - [JuliaCall for Seamless Integration of R and
    Julia](#juliacall-for-seamless-integration-of-r-and-julia)
      - [Installation](#installation)
      - [Basic Usage](#basic-usage)
      - [Trouble Shooting and Way to Get
        Help](#trouble-shooting-and-way-to-get-help)
      - [JuliaCall for R Package
        Developers](#juliacall-for-r-package-developers)
      - [Suggestion and Issue
        Reporting](#suggestion-and-issue-reporting)
      - [Interfaces between R and
        Julia](#interfaces-between-r-and-julia)

Package `JuliaCall` is an R interface to `Julia`, which is a high-level,
high-performance dynamic programming language for numerical computing,
see <https://julialang.org/> for more information. Below is an image for
[Mandelbrot set](https://en.wikipedia.org/wiki/Mandelbrot_set).
JuliaCall brings **more than 100 times speedup** of the calculation\!
See
<https://github.com/Non-Contradiction/JuliaCall/tree/master/example/mandelbrot>
for more
information.

![](https://non-contradiction.github.io/JuliaCall/articles/mandelbrot.png)

## Installation

`JuliaCall` is on CRAN now\! To use package `JuliaCall`, you first have
to install [`Julia`](https://julialang.org/) on your computer, you can
download a generic binary from <https://julialang.org/downloads/> and
add it to your path, and then you can install `JuliaCall` just like any
other R packages by

``` r
install.packages("JuliaCall")
```

You can get the development version of `JuliaCall` by

``` r
devtools::install_github("Non-Contradiction/JuliaCall")
```

## Basic Usage

```` r
library(JuliaCall)

## Do initial setup

julia <- julia_setup()
#> Julia version 0.6.2 at location /Applications/Julia-0.6.app/Contents/Resources/julia/bin will be used.
#> Julia initiation...
#> Finish Julia initiation.
#> Loading setup script for JuliaCall...
#> Finish loading setup script for JuliaCall.

## If you want to use a julia at a specific location, you could do the following:
## julia_setup(JULIA_HOME = "the folder that contains julia binary"), 
## or you can set JULIA_HOME in command line environment or use `options(...)`

## Different ways for using Julia to calculate sqrt(2)

# julia$command("a = sqrt(2);"); julia$eval("a")
julia_command("a = sqrt(2);"); julia_eval("a")
#> [1] 1.414214
julia_eval("sqrt(2)")
#> [1] 1.414214
julia_call("sqrt", 2)
#> [1] 1.414214
julia_eval("sqrt")(2)
#> [1] 1.414214
julia_assign("x", sqrt(2)); julia_eval("x")
#> [1] 1.414214
julia_assign("rsqrt", sqrt); julia_call("rsqrt", 2)
#> [1] 1.414214
2 %>J% sqrt
#> [1] 1.414214

## You can use `julia$exists` as `exists` in R to test
## whether a function or name exists in Julia or not

julia_exists("sqrt")
#> [1] TRUE
julia_exists("c")
#> [1] FALSE

## You can use `julia$help` to get help for Julia functions

julia_help("sqrt")
#> ```
#> sqrt(x)
#> ```
#> 
#> Return $\sqrt{x}$. Throws [`DomainError`](@ref) for negative [`Real`](@ref) arguments. Use complex negative arguments instead. The prefix operator `√` is equivalent to `sqrt`.

## Functions related to installing and using Julia packages

julia_install_package("Optim")
julia_install_package_if_needed("Optim")
julia_installed_package("Optim")
#> [1] "0.14.1"
julia_library("Optim")
````

## Trouble Shooting and Way to Get Help

### Julia is not found

Make sure the `Julia` installation is correct. `JuliaCall` is able to
find `Julia` on PATH, and there are three ways for `JuliaCall` to find
`Julia` not on PATH.

  - Use `julia_setup(JULIA_HOME = "the folder that contains julia
    binary")`
  - Use `options(JULIA_HOME = "the folder that contains julia binary")`
  - Set `JULIA_HOME` in command line environment.

### How to Get Help

  - One way to get help for julia functions is just using `julia$help`
    like the following example:

<!-- end list -->

```` r
julia_help("sqrt")
#> ```
#> sqrt(x)
#> ```
#> 
#> Return $\sqrt{x}$. Throws [`DomainError`](@ref) for negative [`Real`](@ref) arguments. Use complex negative arguments instead. The prefix operator `√` is equivalent to `sqrt`.
````

  - The GitHub Pages for this repository host the documentation for the
    development version of `JuliaCall`:
    <https://non-contradiction.github.io/JuliaCall/>.

  - And you are more than welcome to contact me about `JuliaCall` at
    <lch34677@gmail.com> or <cxl508@psu.edu>.

## JuliaCall for R Package Developers

If you are interested in developing an R package which is an interface
for a Julia package, `JuliaCall` is an ideal choice for that\!

Basically you only need to find the Julia function or Julia module you
want to have in `R` and then just `using` the module and `call` the
function. Several examples are:

  - [`diffeqr`](https://github.com/JuliaDiffEq/diffeqr) is a package for
    solving differential equations in `R`. It utilizes
    [DifferentialEquations.jl](http://docs.juliadiffeq.org/latest/) for
    its core routines to give high performance solving of ordinary
    differential equations (ODEs), stochastic differential equations
    (SDEs), delay differential equations (DDEs), and
    differential-algebraic equations (DAEs) directly in `R`.
  - [`convexjlr`](https://github.com/Non-Contradiction/convexjlr) is an
    `R` package for Disciplined Convex Programming (DCP) by providing a
    high level wrapper for `Julia` package
    [`Convex.jl`](https://github.com/JuliaOpt/Convex.jl). `convexjlr`
    can solve linear programs, second order cone programs, semidefinite
    programs, exponential cone programs, mixed-integer linear programs,
    and some other DCP-compliant convex programs through `Convex.jl`.
  - [`ipoptjlr`](https://github.com/Non-Contradiction/ipoptjlr) provides
    an `R` interface to the `Ipopt` nonlinear optimization solver. It
    provides a simple high-level wrapper for `Julia` package
    \[`Ipopt.jl`\] (<https://github.com/JuliaOpt/Ipopt.jl>).
  - [Julia MixedModels from R](http://rpubs.com/dmbates/377897)
    illustrates how to use `JuliaCall` and `Julia` package
    [`MixedModels.jl`](https://github.com/dmbates/MixedModels.jl) to
    build mixed models in `R`.

If you have any issues in developing an `R` package using `JuliaCall`,
you may report it using the link:
<https://github.com/Non-Contradiction/JuliaCall/issues/new>. Or email me
at <lch34677@gmail.com> or <cxl508@psu.edu>.

## Suggestion and Issue Reporting

`JuliaCall` is under active development now. Any suggestion or issue
reporting is welcome\! You may report it using the link:
<https://github.com/Non-Contradiction/JuliaCall/issues/new>. Or email me
at <lch34677@gmail.com> or <cxl508@psu.edu>.

And if you encounter some issues which crash `R` or `RStudio`, then you
may have met segfault errors. I am very sorry. And I am trying my best
to remove errors like that. It will be much appreciated if you can

  - download the source of `JuliaCall` from Github,
  - open `JuliaCall.Rproj` in your RStudio or open `R` from the
    directory where you download the source of `JuliaCall`,
  - run `devtools::check()` to see the result of `R CMD check` for
    `JuliaCall` on your machine,
  - and paste the result to the issue report.

## Interfaces between R and Julia

  - [`RCall.jl`](https://github.com/JuliaInterop/RCall.jl) is a `Julia`
    package which embeds `R` in `Julia`. `JuliaCall` is inspired by
    `RCall.jl` and depends on `RCall.jl` for many functionalities like
    much of the type conversion between `R` and `Julia`.
  - [`XRJulia`](https://github.com/johnmchambers/XRJulia) is an `R`
    package based on John Chambers’ `XR` package and allow for
    structured integration of `R` with `Julia`. It connects to `Julia`
    and uses JSON to transfer data between `Julia` and `R`.
  - [`RJulia`](https://github.com/armgong/rjulia) is an `R` package
    which embeds `Julia` in `R` as well as `JuliaCall`. It is not on
    CRAN yet and I haven’t tested it.
