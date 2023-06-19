defmodule Blog.Comments.Comment do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Stories.Story

  @fields [:message]
  @required @fields

  schema "comments" do
    field :message, :string
    belongs_to :story, Story

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, @fields)
    |> validate_required(@required)
  end
end
