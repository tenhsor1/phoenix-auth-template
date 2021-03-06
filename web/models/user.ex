defmodule Discuss.User do
  use Discuss.Web, :model

  schema "users" do
    field :email, :string
    field :name, :string
    field :portrait_url, :string
    field :token, :string
    field :provider, :string
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :name, :portrait_url, :token, :provider])
    |> validate_required([:email, :provider, :token])
  end

end
