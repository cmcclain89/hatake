defmodule Hatake.Organizations.Team do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hatake.Organizations.Organization

  schema "teams" do
    field :name, :string
    belongs_to :organization, Organization

    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [:name, :organization_id])
    |> validate_required([:name, :organization_id])
  end
end
