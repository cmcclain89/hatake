defmodule Hatake.CareerGrowth.Goals do
  use Ecto.Schema
  import Ecto.Changeset

  schema "goals" do
    field :name, :string
    field :reason, :string
    field :outcome, :string
    field :teammember_id, :id

    timestamps()
  end

  @doc false
  def changeset(goals, attrs) do
    goals
    |> cast(attrs, [:name, :reason, :outcome])
    |> validate_required([:name, :reason, :outcome])
  end
end
