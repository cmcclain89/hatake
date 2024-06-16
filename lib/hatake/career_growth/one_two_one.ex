defmodule Hatake.CareerGrowth.OneTwoOne do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hatake.Organizations

  schema "onetwoone" do
    field :location, :string
    field :date_of_talk, :utc_datetime
    field :previous_summary, :string
    field :lead_topics, {:array, :string}
    field :user_topics, {:array, :string}
    field :summary, :string
    field :lead_actions, {:array, :string}
    field :user_actions, {:array, :string}

    belongs_to :team_member, Organizations.User, foreign_key: :member_id, where: [role: "user"]
    belongs_to :team_lead, Organizations.User, foreign_key: :lead_id, where: [role: "lead"]

    timestamps()
  end

  @doc false
  def changeset(one_two_one, attrs) do
    one_two_one
    |> cast(attrs, [
      :date_of_talk,
      :location,
      :previous_summary,
      :lead_topics,
      :user_topics,
      :summary,
      :lead_actions,
      :user_actions
    ])
    |> validate_required([
      :date_of_talk,
      :location,
      :previous_summary,
      :lead_topics,
      :user_topics,
      :summary,
      :lead_actions,
      :user_actions
    ])
  end
end
