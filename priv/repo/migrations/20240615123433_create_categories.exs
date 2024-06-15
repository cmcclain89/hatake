defmodule Hatake.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :description, :string
      add :order, :integer
      add :weight, :decimal

      timestamps()
    end
  end
end
