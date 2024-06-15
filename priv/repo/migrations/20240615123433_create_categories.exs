defmodule Hatake.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :description, :string
      add :order, :integer
      add :weight, :decimal
      add :limit, :integer

      timestamps()
    end
  end
end
