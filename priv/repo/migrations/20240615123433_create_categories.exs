defmodule Hatake.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :description, :string, size: 1000
      add :order, :integer, null: false
      add :weight, :decimal, precision: 3, scale: 2, default: 1.00, null: false
      add :limit, :integer

      timestamps()
    end
  end
end
