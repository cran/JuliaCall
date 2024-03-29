context("JuliaObject test")

test_that("test of JuliaObject", {
    skip_on_cran()
    julia <- julia_setup(installJulia = TRUE)

    expect_equal(c(julia_eval("1//2") ^ 2), 0.25)

    julia_command("
    mutable struct Mytype
        num::Int
        den::Int
        ans::Float64
    end")
    julia_eval("Mytype(1, 12, 1/12)")
    r <- julia_eval("Mytype(1, 12, 1/12)")
    expect_equal(length(r), 1)
    expect_equal(julia_call("getfield", r, quote(den)), 12)
    expect_equal(julia_call("getfield", r, quote(num)), 1)
    expect_equal(julia_call("getfield", r, quote(ans)), 1 / 12)
    expect_equal(fields(r), c("num", "den", "ans"))
    expect_equal(field(r, "num"), 1)
    expect_equal(field(r, "den"), 12)
    expect_equal(field(r, "ans"), 1 / 12)
    field(r, "num") <- 2; field(r, "ans") <- 2 / 12
    expect_equal(field(r, "num"), 2)
    expect_equal(field(r, "den"), 12)
    expect_equal(field(r, "ans"), 2 / 12)
    remove(r)
})

test_that("test of JuliaObject freeing", {
    skip_on_cran()
    julia <- julia_setup(installJulia = TRUE)

    gc()
    count0 <- julia_eval("length(keys(RCall.jtypExtPtrs))")

    r <- julia_eval("1//2")
    count1 <- julia_eval("length(keys(RCall.jtypExtPtrs))")
    expect_equal(count1, count0 + 1)

    r <- NULL
    gc()
    count2 <- julia_eval("length(keys(RCall.jtypExtPtrs))")
    expect_equal(count2, count0)

})

test_that("test of callable JuliaObject", {
    skip_on_cran()
    julia <- julia_setup(installJulia = TRUE)

    julia_command("struct Callable end")
    julia_command("(::Callable)(x...) = x")
    r <- julia_eval("Callable()")
    r1 <- r$.(1,2,3)
    expect_equal(length(r1), 3)
    expect_equal(r1[[1]], 1)
    expect_equal(r1[[2]], 2)
    expect_equal(r1[[3]], 3)
    expect_true(inherits(r1, "JuliaTuple"))
})

## Callable keyword arguments #165
test_that("test of callable JuliaObject with keyword arguments", {
    skip_on_cran()
    julia <- julia_setup(installJulia = TRUE)

    julia_command("struct CallableKW end")
    julia_command("(::CallableKW)(x...; a=3.0, b=2) = a+b")
    r <- julia_eval("CallableKW()")
    r1 <- r$.(1, 2, 3, a=3.2)
    expect_equal(r1, 5.2)
})
