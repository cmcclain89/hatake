defmodule Hatake.Organizations.Organization do
  use Ecto.Schema
  import Ecto.Changeset

  schema "organizations" do
    field :name, :string
    field :contact_email, :string
    field :country, :string

    timestamps()
  end

  @doc false
  def changeset(organization, attrs) do
    organization
    |> cast(attrs, [:name, :contact_email, :country])
    |> validate_required([:name, :contact_email, :country])
  end
end
