defmodule Blog.Stories.Story do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:body, :title, :user_id]
  @required @fields -- [:user_id]

  schema "stories" do
    field :body, :string
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(story, attrs) do
    story
    |> cast(attrs, @fields)
    |> validate_required(@required)
  end
end
