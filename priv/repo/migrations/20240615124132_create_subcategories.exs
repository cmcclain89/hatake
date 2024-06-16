defmodule Hatake.Repo.Migrations.CreateSubcategories do
  use Ecto.Migration

  def change do
    create table(:subcategories) do
      add :name, :string
      add :description, :string, size: 1000
      add :order, :integer, null: false
      add :min_score, :integer, null: false
      add :max_score, :integer, null: false
      add :category_id, references(:categories, on_delete: :delete_all)

      timestamps()
    end

    create index(:subcategories, [:category_id])
  end
end
