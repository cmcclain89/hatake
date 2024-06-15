defmodule Hatake.Repo.Migrations.CreateSubcategories do
  use Ecto.Migration

  def change do
    create table(:subcategories) do
      add :name, :string
      add :description, :string
      add :order, :integer
      add :min_score, :integer
      add :max_score, :integer
      add :category_id, references(:categories, on_delete: :delete_all)

      timestamps()
    end

    create index(:subcategories, [:category_id])
  end
end
