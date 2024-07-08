# FizzBuzz

FizzBuzz es un programa que muestra por consola los números del 1 al 100, sustituyendo los múltiplos de 3 por "fizz", los múltiplos de 5 por "buzz" y los múltiplos de ambos por "fizzbuzz".

## Creación del Proyecto

Para crear el proyecto con Mix, ejecute el siguiente comando en su terminal:

```sh
mix new fizz_buzz
```
Esto generará una estructura de directorios básica para su proyecto.

### Adición de Dependencias
Edite el archivo mix.exs para añadir las dependencias necesarias:

```elixir	
defmodule FizzBuzz.MixProject do
  use Mix.Project

  def project do
    [
      app: :fizz_buzz,
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
Para ejecutar el programa FizzBuzz, inicie una sesión interactiva de Elixir y llame a la función FizzBuzz.message/0:

```sh
MIX_ENV=dev iex -S mix
iex> FizzBuzz.message()
```
### Ejecutar los Tests
Para ejecutar los tests, ejecute:
  
  ```sh
  mix test
  ```

### Ver la Documentación
Para ver la documentación de las funciones y módulos en Elixir, puede utilizar el comando h en la consola interactiva de Elixir (iex). Por ejemplo:

```elixir
iex> h FizzBuzz
```

Esto mostrará la documentación del módulo FizzBuzz. Para ver la documentación de una función específica, puede usar el comando h seguido del nombre del módulo y la función:

```elixir
iex> h FizzBuzz.message/0
```

La documentación puede ser generada con ExDoc y publicada en HexDocs. Una vez publicada, la documentación se puede encontrar en https://hexdocs.pm/fizz_buzz.