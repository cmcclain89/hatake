defmodule Hatake.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :organization_id, references(:organizations, on_delete: :delete_all), null: false
      add :name, :string

      timestamps()
    end
  end
end
