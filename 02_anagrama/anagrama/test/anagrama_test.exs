defmodule AnagramaTest do
  use ExUnit.Case
  doctest Anagrama

  test "check if two Strings are an anagram of each other" do
    assert Anagrama.is_anagram?("Cosa", "Saco") == true
    assert Anagrama.is_anagram?(" roto ", "Toro ") == true
    assert Anagrama.is_anagram?("Prueba", "elixir ") == false
  end
end
