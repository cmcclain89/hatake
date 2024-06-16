defmodule Hatake.Repo.Migrations.CreateGoalActions do
  use Ecto.Migration

  def change do
    create table(:goal_actions) do
      add :action, :string
      add :outcome, :string
      add :goal_id, references(:goals, on_delete: :nothing)
      add :added_by, references(:org_users, on_delete: :nothing)

      timestamps()
    end

    create index(:goal_actions, [:goal_id])
    create index(:goal_actions, [:added_by])
  end
end
