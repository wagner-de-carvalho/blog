# Blog

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Auth Generator
- `mix phx.gen.auth Accounts User users` = gera autenticação de usuários.
For *LiveView*, **mix phx.gen.live <Context or Module> <Schema> <table> <attributes (key => value)>**:
- `mix phx.gen.live Stories Story stories title:string body:text user_id:references:users>` = gera migração, *schema* ou módulo com atributos, testes, componente, rotas, escopo, página HTML, *fixtures*.
