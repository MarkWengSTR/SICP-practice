function iden(x)
  return x
end

function next(x)
  return x + 1
end

function sum(term, a, next, b)
  return a > b ? 0 : term(a) + sum(term, next(a), next, b)
end

println(sum(iden, 1, next, 5))
