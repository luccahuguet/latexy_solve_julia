using Symbolics
using Latexify


function energy(Cval, vval)
  @variables C V
  E = C * Cval * ((V * vval)^2) / 2
end

# function eq()
#   @variables v1 v2
#   eq1 = v2 ~ 3.4 * v1 - 6
#   eq2 = v1 ~ 7.4 * eq1 / 3 - 8
# end

e = energy(1 , 2)
solve(e)

latexify(e) |> render