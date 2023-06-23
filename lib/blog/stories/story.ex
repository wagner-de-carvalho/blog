defmodule Blog.Stories.Story do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Accounts.User
  alias Blog.Comments.Comment

  @fields [:body, :title, :user_id]
  @required @fields -- [:user_id]

  schema "stories" do
    field :body, :string
    field :title, :string
    belongs_to :user, User
    has_many :comments, Comment, on_delete: :delete_all

    timestamps()
  end

  @doc false
  def changeset(story, attrs) do
    story
    |> cast(attrs, @fields)
    |> validate_required(@required)
  end
end
