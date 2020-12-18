defmodule Basic do
  @moduledoc """
  Documentation for `Basic`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Basic.hello()
      :world

  """
  def hello do
    :world
  end

  def add(a, b) do
    a + b
  end

  def substract(a ,b) do
    a - b
  end

  def multiple(a, x) do
    a * x
  end

  def map do
    # atomKey = %{:name => "Howard", :age => 30}

    # anotherKey = %{
    #   1 => "Integer One",
    #   1.5 => "Float!",
    #   true => "boolean key",
    #   {:name, "Daniel"} => "tuple",
    #   %{map_as_key: true} => "gracious",
    #   [1, 2, 3] => "a list"
    # }

    nestedValuesMap = %{
      id: 1,
      customer: %{
        id: 99,
        name: "Udin inc"
      },
      item: [
        %{id: 1, name: "coklat", amount: 1, price: 10000},
        %{id: 2, name: "bubuk", amount: 1, price: 2500},
      ],
      discounts: [
        %{code: "SUMMER19"}
      ],
      total: 12500.00
    }

    testValue = Map.get(nestedValuesMap, :id)

    #how to handling missing value
    missingValue = Map.get(nestedValuesMap, :missing, "this is missing value")

    #get nested value
    customer = get_in(nestedValuesMap, [:customer, :name])
    IO.puts(customer)

    IO.puts(nestedValuesMap[:id])

    IO.puts(nestedValuesMap.total)

    IO.puts(testValue)
    IO.puts(missingValue)

  end

  def immutableMap do
    person = %{
      name: "sally",
      age: 35,
      position: "unemployed"
    }

    Map.put(person, :region, "jawa barat")

    person = Map.put(person, :provinsi, "djakarta")

    IO.puts(person.provinsi)

    data = %{
      name: "level 1",
      value: 100,
      data_1: %{
        name: "level 2",
        value: 200,
        data_2: %{
          name: "level 3",
          angka: 300
        }
      }
    }

    # accessing and adding data inside nested map
    data = put_in(data, [:data_1, :data_2, :angka], 1_000_000)

    IO.puts(data.data_1.data_2.angka)

    # updating multiple key
    person = %{person | position: "vp engineering 123", age: 37}

    IO.puts(person.position)
  end
end


defmodule MyFoo do
  def foo do
    "Hello!"
  end

  def greeting(name) do
    "hello #{name}"
  end

  def greetingTwoVar(name1, name2) do
    "hello greeting #{name1} dan #{name2}"
  end

  def parentsFunc(input) do

  end
end


# Basic.map
# Basic.immutableMap
