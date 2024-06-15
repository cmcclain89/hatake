defmodule Hatake.Evaluations.SubCategory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "subcategories" do
    field :name, :string
    field :description, :string
    field :order, :integer
    field :min_score, :integer
    field :max_score, :integer
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(sub_category, attrs) do
    sub_category
    |> cast(attrs, [:name, :description, :order, :min_score, :max_score])
    |> validate_required([:name, :description, :order, :min_score, :max_score])
  end
end
