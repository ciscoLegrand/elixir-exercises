defmodule Fibonacci do
  @moduledoc """
    Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.
    - La serie Fibonacci se compone por una sucesión de números en
      la que el siguiente siempre es la suma de los dos anteriores.
      0, 1, 1, 2, 3, 5, 8, 13...
  """

  @doc """
  Imprime los primeros 50 números de la serie de Fibonacci.
  """

  def fibonacci do
    Stream.unfold( {0, 1}, fn {f1, f2} -> {f1, {f2, f1+f2}} end )
    |> Enum.take(50)
  end
end
