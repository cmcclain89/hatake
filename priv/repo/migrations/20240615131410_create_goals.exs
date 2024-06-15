defmodule Hatake.Repo.Migrations.CreateGoals do
  use Ecto.Migration

  def change do
    create table(:goals) do
      add :name, :string
      add :reason, :string
      add :outcome, :string
      add :teammember_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:goals, [:teammember_id])
  end
end
