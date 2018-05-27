defmodule SandboxCore.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:email, :string)
    end
  end
end
