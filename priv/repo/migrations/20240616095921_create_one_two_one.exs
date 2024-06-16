defmodule Hatake.Repo.Migrations.CreateOneTwoOne do
  use Ecto.Migration

  def change do
    create table(:onetwoone) do
      add :date_of_talk, :utc_datetime
      add :location, :string
      add :previous_summary, :string, size: 1000, null: false
      add :lead_topics, {:array, :string}
      add :user_topics, {:array, :string}
      add :summary, :string, size: 1000, null: false
      add :lead_actions, {:array, :string}
      add :user_actions, {:array, :string}
      add :lead_id, references(:org_users, on_delete: :nilify_all)
      add :member_id, references(:org_users, on_delete: :nilify_all)

      timestamps()
    end

    create index(:onetwoone, [:lead_id])
    create index(:onetwoone, [:member_id])
  end
end
