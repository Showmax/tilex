defmodule Tilex.Repo.Migrations.ChannelIdNotNullOnPosts do
  use Ecto.Migration

  def up do
    alter table(:posts) do
      modify :channel_id, :uuid, null: false
    end
  end

  def down do
    alter table(:posts) do
      modify :channel_id, :uuid, null: true
    end
  end
end
