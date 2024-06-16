defmodule Hatake.Organizations.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hatake.Organizations
  alias Hatake.Accounts

  schema "org_users" do
    field :name, :string
    field :position, :string
    field :role, :string

    belongs_to :organization, Organizations.Organization
    belongs_to :team, Organizations.Team
    belongs_to :user, Accounts.User

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :position, :role])
    |> validate_required([:name, :position, :role])
  end
end
