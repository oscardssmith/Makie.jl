# This file was generated, do not modify it. # hide
__result = begin # hide
    using CairoMakie
CairoMakie.activate!() # hide


fig = Figure()
ax = Axis(fig[1, 1])
xlims!(ax, 0.75, 3.25)
ylims!(ax, 1, 4.5)

caps = (nothing, :square, :round)
xs = [1, 2, 3, 2]
ys = [0.5, 1, 0.75, 0.5]

for (i, cap) in enumerate(caps)
    lines!(ax, xs, ys .+ i, linecap = cap, linewidth = 50)
    lines!(ax, xs, ys .+ i, color = :black)
end

fig
end # hide
save(joinpath(@OUTPUT, "example_7181631179550137473.png"), __result; ) # hide
save(joinpath(@OUTPUT, "example_7181631179550137473.svg"), __result; ) # hide
nothing # hide