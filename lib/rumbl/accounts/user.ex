defmodule Rumbl.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  # Ecto automatically defines an Elixir struct
  # for us, which we can create by calling %Rumbl.Accounts.User{} as we did before.
  schema "users" do
    # Ecto defines the primary key called:id automatically
    field :name, :string
    field :username, :string
    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username])
    |> validate_required([:name, :username])
    |> validate_length(:username, min: 1, max: 20)
  end


end
