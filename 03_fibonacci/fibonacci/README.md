# Fibonacci

Este programa imprime los 50 primeros números de la sucesión de Fibonacci empezando en 0.

La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores:
0, 1, 1, 2, 3, 5, 8, 13...

## Creación del Proyecto

Para crear el proyecto con Mix, ejecute el siguiente comando en su terminal:


```sh
mix new fibonacci
```

Esto generará una estructura de directorios básica para su proyecto.

### Adición de Dependencias
Edite el archivo mix.exs para añadir las dependencias necesarias:

```elixir
defmodule Fibonacci.MixProject do
  use Mix.Project

  def project do
    [
      app: :fibonacci,
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
Para ejecutar el programa Fibonacci, inicie una sesión interactiva de Elixir y llame a la función Fibonacci.fibonacci

```sh
MIX_ENV=dev iex -S mix
iex(1)> Fibonacci.fibonacci
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584,
 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229,
 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817,
 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733,
 1134903170, 1836311903, 2971215073, 4807526976, 7778742049]
```

### Ejecución de Pruebas
Para ejecutar las pruebas, ejecute:

```sh
mix test
```

### Ver la documentación
Para ver la documentación de las funciones y módulos en Elixir, puede utilizar el comando h en la consola interactiva de Elixir (iex). Por ejemplo

```sh
iex> h Fibonacci
```
Esto mostrará la documentación del módulo Anagrama. Para ver la documentación de una función específica, puede usar el comando h seguido del nombre del módulo y la función:
  
  ```sh
iex> h Fibonacci.fibonacci
```
La documentación puede ser generada con ExDoc y publicada en HexDocs. Una vez publicada, la documentación se puede encontrar en https://hexdocs.pm/anagrama. 