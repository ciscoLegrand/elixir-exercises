defmodule PrimeTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Prime

  test "check if a number is prime" do
    assert Prime.is_prime?(2) == true
    assert Prime.is_prime?(3) == true
    assert Prime.is_prime?(4) == false
    assert Prime.is_prime?(5) == true
    assert Prime.is_prime?(6) == false
    assert Prime.is_prime?(7) == true
    assert Prime.is_prime?(59) == true
    assert Prime.is_prime?(60) == false
    assert Prime.is_prime?(61) == true
    assert Prime.is_prime?(62513) == false
  end

  test "print prime numbers between 1 and 3" do
    output = capture_io(fn ->
      Prime.print_primes_between(1, 3)
    end)
    assert output == "2\n3\n"
  end

  test "print prime numbers between 1 and 100" do
    Prime.print_primes_between(1, 100)
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    assert Enum.sort(primes) == Enum.sort(Prime.primes_between(1, 100))
  end
end
