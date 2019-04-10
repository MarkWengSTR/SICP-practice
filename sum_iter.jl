function iden(x)
  return x
end

function next(x)
  return x + 1
end

function sum(term, a, next, b)
  function iter(a, result)
    return a > b ? result : (iter(next(a), term(a) + result))
  end

  return iter(a, 0)
end

println(sum(iden, 1, next, 5))
