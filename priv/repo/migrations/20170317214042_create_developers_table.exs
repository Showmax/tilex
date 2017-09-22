defmodule Tilex.Repo.Migrations.CreateDevelopersTable do
  use Ecto.Migration

  def change do
    create table(:developers, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :email, :varchar, null: false
      add :username, :varchar, null: false
      add :google_id, :varchar, null: false

      timestamps()
    end
  end
end
