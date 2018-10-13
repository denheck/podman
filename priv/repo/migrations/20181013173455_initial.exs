defmodule Podman.Repo.Migrations.Initial do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :name, :text
      add :source_url, :text

      timestamps()
    end

    create table(:episodes) do
      add :channel_id, references("channels", on_delete: :delete_all, on_update: :update_all)
      add :name, :text
      add :date, :datetime
      add :source_url, :text

      timestamps()
    end
  end
end
