import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :rumbl, Rumbl.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "rumbl_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rumbl, RumblWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
<<<<<<< HEAD
  secret_key_base: "TZbKd9GtSz9yYLL8bhGumuffSfe/4H9xpT33TTldSGV5kOXlmCoULEs6OMAtmnsc",
=======
  secret_key_base: "2rbfJxrLSibEAETf59S357JIdcVADtXkaASB7H0Ana5e2mJNX3vw4dCOzz7S6i2V",
>>>>>>> 4bd0e060573a19965c92c4d7811c46a31543e5fe
  server: false

# In test we don't send emails.
config :rumbl, Rumbl.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
