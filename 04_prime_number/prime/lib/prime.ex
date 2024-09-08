defmodule Prime do
  @moduledoc """
  El módulo `Prime` proporciona funciones para comprobar si un número es primo y para
  imprimir una lista de números primos dentro de un rango dado.

  Un número primo es un número natural mayor que 1 que solo es divisible entre sí mismo y 1.

  Funciones disponibles:
  - `is_prime?/1`: Verifica si un número es primo.
  - `print_primes_between/2`: Imprime todos los números primos entre dos valores.
  - `primes_between/2`: Devuelve una lista de números primos en el rango especificado.
  """

  @doc """
  Verifica si un número dado es primo.

  ## Ejemplos:

      iex> Prime.is_prime?(2)
      true

      iex> Prime.is_prime?(6)
      false

      iex> Prime.is_prime?(17)
      true

  La función devuelve `true` si el número es primo y `false` en caso contrario.
  """
  def is_prime?(number) when number <= 1, do: false
  def is_prime?(2), do: true

  # Esta función calcula la raíz cuadrada del número para reducir el rango de búsqueda
  # de posibles divisores. Luego llama a `check_prime/3` para verificar la primalidad.
  def is_prime?(number) do
    max_divisor = :math.sqrt(number) |> floor
    check_prime(number, 2, max_divisor)
  end

  @doc """
  Imprime los números primos entre `start` y `end_number`.

  ## Ejemplo:

      iex> Prime.print_primes_between(1, 3)
      :ok

  La función utiliza `IO.puts/1` para imprimir cada número primo en el rango.
  """
  def print_primes_between(start, end_number) do
    primes_between(start, end_number)
    |> Enum.each(&IO.puts/1)  # Imprime cada número primo
  end

  # Función auxiliar que verifica si el número tiene divisores entre 2 y max_divisor.
  # Si encuentra un divisor, el número no es primo.
  defp check_prime(_, divisor, max_divisor) when divisor > max_divisor, do: true
  defp check_prime(number, divisor, max_divisor) do
    if rem(number, divisor) == 0 do
      false  # El número no es primo si es divisible por `divisor`
    else
      check_prime(number, divisor + 1, max_divisor)  # Sigue comprobando el siguiente divisor
    end
  end

  @doc """
  Devuelve una lista de números primos entre `start` y `end_number`.

  ## Ejemplo:

      iex> Prime.primes_between(1, 10)
      [2, 3, 5, 7]

  La función utiliza `Stream.iterate/2` para generar números y los filtra con `is_prime?/1`.
  """
  def primes_between(start, end_number) do
    # Genera números comenzando en `start` y los toma hasta `end_number`
    Stream.iterate(start, &(&1 + 1))
    |> Enum.take_while(&(&1 <= end_number))  # Toma números mientras estén dentro del rango
    |> Enum.filter(&is_prime?/1)  # Filtra solo los números primos
  end
end
