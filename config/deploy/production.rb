set :rails_env, 'production'
set :branch,    :master

# RBENV
set :rbenv_type,        :system
set :rbenv_custom_path, '/opt/rbenv'
set :rbenv_ruby,        '2.1.4'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

set :deploy_to, '/home/deployer_production/drail242a'

server 'example.com', user: 'deployer_production', roles: %w(app web db)
