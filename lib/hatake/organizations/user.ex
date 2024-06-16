defmodule Hatake.Organizations.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "org_users" do
    field :name, :string
    field :position, :string
    field :role, :string
    field :user_id, :id
    field :organization_id, :id
    field :team_id, :id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :position, :role])
    |> validate_required([:name, :position, :role])
  end
end
