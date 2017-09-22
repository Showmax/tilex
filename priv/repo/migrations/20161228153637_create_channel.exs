defmodule Tilex.Repo.Migrations.CreateChannel do
  use Ecto.Migration

  def change do
    create table(:channels, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string, null: false
      add :twitter_hashtag, :string, null: false

      timestamps()
    end
  end
end
