defmodule Hatake.CareerGrowth.OneTwoOne do
  use Ecto.Schema
  import Ecto.Changeset

  schema "onetwoone" do
    field :location, :string
    field :date_of_talk, :utc_datetime
    field :previous_summary, :string
    field :lead_topics, :string
    field :user_topics, :string
    field :summary, :string
    field :lead_actions, {:array, :string}
    field :user_actions, {:array, :string}
    field :lead_id, :id
    field :member_id, :id

    timestamps()
  end

  @doc false
  def changeset(one_two_one, attrs) do
    one_two_one
    |> cast(attrs, [:date_of_talk, :location, :previous_summary, :lead_topics, :user_topics, :summary, :lead_actions, :user_actions])
    |> validate_required([:date_of_talk, :location, :previous_summary, :lead_topics, :user_topics, :summary, :lead_actions, :user_actions])
  end
end
