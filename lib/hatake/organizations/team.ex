defmodule Hatake.Organizations.Team do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hatake.Organizations

  schema "teams" do
    field :name, :string
    belongs_to :organization, Organizations.Organization
    has_many :teams, Organizations.Team

    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [:name, :organization_id])
    |> validate_required([:name, :organization_id])
  end
end
