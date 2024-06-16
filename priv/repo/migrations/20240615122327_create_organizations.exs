defmodule Hatake.Repo.Migrations.CreateOrganizations do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :string
      add :contact_email, :citext
      add :country, :string, size: 2

      timestamps()
    end
  end
end
