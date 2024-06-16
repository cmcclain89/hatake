defmodule Hatake.Repo.Migrations.CreateOrgUser do
  use Ecto.Migration

  def change do
    create table(:org_users) do
      add :name, :string
      add :position, :string
      add :role, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :organization_id, references(:organizations, on_delete: :delete_all), null: false
      add :team_id, references(:teams, on_delete: :nilify_all)

      timestamps()
    end

    create index(:org_users, [:user_id])
    create index(:org_users, [:organization_id])
    create index(:org_users, [:team_id])

    create constraint(:org_users, :role_constraint, check: "role IN ('admin', 'lead', 'user')")
  end
end
