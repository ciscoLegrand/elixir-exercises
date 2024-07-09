# Anagrama

Anagrama es un programa que verifica si dos strings son anagramas entre sí.

## Creación del Proyecto

Para crear el proyecto con Mix, ejecute el siguiente comando en su terminal:

```sh
mix new anagrama
```

Esto generará una estructura de directorios básica para su proyecto.

### Adición de Dependencias
Edite el archivo mix.exs para añadir las dependencias necesarias:

```elixir
defmodule Anagrama.MixProject do
  use Mix.Project

  def project do
    [
      app: :anagrama,
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
Para ejecutar el programa Anagrama, inicie una sesión interactiva de Elixir y llame a la función Anagrama.is_anagram?/2:

```sh
MIX_ENV=dev iex -S mix
iex> Anagrama.is_anagram?("Cosa", "Saco")
true

iex> Anagrama.is_anagram?("cosa", "pasto")
false
```

### Ejecución de Pruebas
Para ejecutar las pruebas, ejecute:

```sh
mix test
```

### Ver la documentación
Para ver la documentación de las funciones y módulos en Elixir, puede utilizar el comando h en la consola interactiva de Elixir (iex). Por ejemplo

```sh
iex> h Anagrama
```
Esto mostrará la documentación del módulo Anagrama. Para ver la documentación de una función específica, puede usar el comando h seguido del nombre del módulo y la función:
  
  ```sh
iex> h Anagrama.is_anagram?/2
```
La documentación puede ser generada con ExDoc y publicada en HexDocs. Una vez publicada, la documentación se puede encontrar en https://hexdocs.pm/anagrama. 