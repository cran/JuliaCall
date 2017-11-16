## Thanks to randy3k for pointing this out,
## `RCall` needs to be precompiled with the current R.
## <https://github.com/Non-Contradiction/JuliaCall/issues/9>
## as well as coming up with the solution

Rhome = ARGS[1]
Rversion = ARGS[2]

## println(Rhome)

ENV["R_HOME"] = Rhome

if Pkg.installed("RCall") == nothing
    if Rversion >= "3.4.0"
        Pkg.add("RCall")
    else
        Pkg.add("RCall", v"0.7.5")
    end
else
    if Rversion < "3.4.0"
        Pkg.pin("RCall", v"0.7.5")
    end
end;

using RCall

if RCall.Rhome != Rhome
    Base.compilecache("RCall")
end
