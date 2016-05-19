set :rails_env, 'staging'
set :branch,    :develop

# RBENV
set :rbenv_type,        :system
set :rbenv_custom_path, '/opt/rbenv'
set :rbenv_ruby,        '2.1.4'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

set :deploy_to, '/home/deployer_staging/drail242a'

server 'staging.example.com', user: 'deployer_staging', roles: %w(app web db)
