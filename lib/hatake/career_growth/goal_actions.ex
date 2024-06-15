defmodule Hatake.CareerGrowth.GoalActions do
  use Ecto.Schema
  import Ecto.Changeset

  schema "goal_actions" do
    field :action, :string
    field :outcome, :string
    field :goal_id, :id
    field :added_by, :id

    timestamps()
  end

  @doc false
  def changeset(goal_actions, attrs) do
    goal_actions
    |> cast(attrs, [:action, :outcome])
    |> validate_required([:action, :outcome])
  end
end
