defmodule Blog.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Stories.Story

  schema "comments" do
    field :message, :string
    belongs_to :story, Story

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:message])
    |> validate_required([:message])
  end
end
