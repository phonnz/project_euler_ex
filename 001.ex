# List natural numbers below 10, multiples of 3 or 5.
# => 3,5,6,9; SUM = 23
# Find multiples of 3 or 5 below 1000 and the SUM
require IEx

defmodule Euler do
  def sum_multiples range, a, b do
    IO.puts("Compute multiples of #{a} and #{b} below #{range}")
    0..range-1
    |> Enum.filter(fn n -> rem(n,a) == 0  || rem(n,b) == 0  end )
    |> Enum.reduce(&(&1+&2))
  end
end

IO.inspect Euler.sum_multiples(10, 3, 5)
IO.inspect Euler.sum_multiples(1000, 3, 5)
