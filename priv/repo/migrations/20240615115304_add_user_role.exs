defmodule Hatake.Repo.Migrations.AddUserRole do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role, :string, null: false, default: "admin", size: 16
    end

    create constraint(:users, :role_constraint,
             check: "role IN ('super', 'admin', 'lead', 'user')"
           )
  end
end
