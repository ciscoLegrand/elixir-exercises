# Prime

El módulo `Prime` en Elixir proporciona funciones para comprobar si un número es primo y para 
imprimir una lista de números primos dentro de un rango dado.

## Creación del Proyecto

Para crear el proyecto con Mix, ejecute el siguiente comando en su terminal:

```sh
mix new prime
```

Esto generará una estructura de directorios básica para su proyecto.

### Adición de Dependencias
Edite el archivo mix.exs para añadir las dependencias necesarias:

```elixir
defmodule Prime.MixProject do
  use Mix.Project

  def project do
    [
      app: :prime,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def deps do
    [
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end
end
```

### Obtener Dependencias
Para obtener las dependencias, ejecute:

```sh
mix deps.get
```

### Compilar en entorno de producción
Para compilar el proyecto en entorno de producción, ejecute:

```sh
MIX_ENV=prod mix compile
```

### Ejecución del Programa
Para ejecutar el programa Prime, inicie una sesión interactiva de Elixir y llame a las funciones disponibles. Por ejemplo, para comprobar si un número es primo:

```sh
MIX_ENV=dev iex -S mix

iex> Prime.is_prime?(2)
true

iex> Prime.is_prime?(6)
false
  
```

O para obtener e imprimir los números primos en un rango específico:

```sh
iex> Prime.print_primes_between(1, 10)
2
3
5
7
:ok

iex> Prime.primes_between(1, 10)
[2, 3, 5, 7]
```

### Ejecución de Pruebas
Para ejecutar las pruebas, ejecute:

```sh
mix test
```

### Ver la documentación
Para ver la documentación de las funciones y módulos en Elixir, puede utilizar el comando h en la consola interactiva de Elixir (iex). Por ejemplo:

```sh
iex> h Prime
```
Esto mostrará la documentación del módulo Prime. Para ver la documentación de una función específica, puede usar el comando h seguido del nombre del módulo y la función:
  
  ```sh
iex> h Prime.is_prime?/1
```
La documentación puede ser generada con ExDoc y publicada en HexDocs. Una vez publicada, la documentación se puede encontrar en https://hexdocs.pm/anagrama. 