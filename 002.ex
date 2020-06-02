## Fibonacci
## By considering the terms in the Fibonacci sequence whose values do not exceed four million
## Find the sum of the even-valued terms.
require IEx

defmodule Euler do
  def fib(n \\ 0) do
    case n do
      0 -> 1
      1 -> 1
      _ -> fib(n - 1) + fib(n - 2)
    end
  end

  def main do
    max_value = 4_000_000

    0..32
    |> Enum.map(fn(x) -> fib(x) end )
    |> Enum.map(fn(x) -> if x < max_value && rem(x,2)  == 0 , do: x end )
    |> Enum.filter(&!is_nil &1 )
    |> Enum.reduce(&(&1 + &2))
    |> IO.inspect
  end
end

Euler.main()
