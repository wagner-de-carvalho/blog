defmodule Blog.TempUtils.UserUtils do
  @moduledoc false
  # alias Blog.Accounts.User

  def print_user(user), do: %{id: user.id, email: user.email, inserted_at: user.inserted_at}
end
