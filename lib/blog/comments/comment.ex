defmodule Blog.Comments.Comment do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Stories.Story
  alias Blog.Accounts.User

  @fields [:message, :story_id, :user_id]
  @required @fields -- [:user_id]

  schema "comments" do
    field :message, :string
    belongs_to :story, Story
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, @fields)
    |> validate_required(@required)
  end
end
