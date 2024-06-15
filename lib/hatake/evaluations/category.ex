defmodule Hatake.Evaluations.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
    field :description, :string
    field :order, :integer
    field :weight, :decimal
    field :limit, :integer

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :description, :order, :weight, :limit])
    |> validate_required([:name, :description, :order, :weight, :limit])
  end
end
