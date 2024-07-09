defmodule Anagrama do
  @moduledoc """
  Escribe una funcion que reciba dos palabras (String) y retorne
  verdadero o false (Bool) según sean o no anagramas.
  - Un anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
  - No hace falta comprobar que ambas palabras existan.
  - Dos palabras exactamente iguales no son anagrama.
  """

  @doc """
  Comprueba si dos palabras son anagramas.

  - Paso 1: Normaliza las palabras:
      - Convierte las palabras a minúsculas. "Cosa" -> "cosa"
      - Divide las palabras en grafemas. (Caracteres) [c, o, s, a]
      - Ordena los grafemas. [a, c, o, s]
      - Une los grafemas. "acos"
      - Elimina los espacios en blanco. "acos"
  - Paso 2: Compara las palabras normalizadas y verifica que no sean iguales.
      - Si son iguales, no son anagramas.
      - Si son diferentes, son anagramas.

  ## Examples

      iex> Anagrama.is_anagram?("Cosa", "Saco")
      true

      iex> Anagrama.is_anagram?("cosa", "pasto")
      false
  """
  def is_anagram?(word1, word2) do
    normalize = fn(word) ->
      word
      |> String.downcase()
      |> String.graphemes()
      |> Enum.sort()
      |> Enum.join()
      |> String.trim
    end

    normalize.(word1) == normalize.(word2) && word1 != word2
  end
end
