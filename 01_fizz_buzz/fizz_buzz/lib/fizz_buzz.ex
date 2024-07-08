defmodule FizzBuzz do
  @moduledoc """
  Escribe un programa que muestre por consola (con un print)
  los números de 1 a 100 (ambos incluidos y con un salto de linea entre cada impresión)
  sustituyendo los siguientes:
  - Múltiplos de 3 por la palabra 'fizz'.
  - Múltiplos de 5 por la palabra 'buzz'.
  - Múltiplos de 3 y de 5 a la vez por la palabra 'fizzbuzz'.
  """

  @doc """
  FizzBuzz
  ## Examples

      iex> FizzBuzz.message()
      1
      2
      fizz
      ...
      98
      fizz
      buzz
  """
  def message do
    numbers = Enum.to_list(1..100)
    Enum.each(numbers, fn(n) ->
      message = cond do
        (rem(n, 3) == 0 && rem(n, 5)== 0) -> "fizzbuzz"
        rem(n, 3) == 0 -> "fizz"
        rem(n, 5) == 0 -> "buzz"
        true -> "#{n}"
      end

      IO.puts message
    end)
  end
end
