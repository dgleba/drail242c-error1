lock '3.4.0'

set :application, 'drail242a'
set :repo_url, 'git@github.com:user/drail242a.git'

# Default value for :linked_files is []
set :linked_files, %w(
  .env
  config/database.yml
)

# Default value for linked_dirs is []
set :linked_dirs, %w(
  log
  tmp/pids
  tmp/cache
  tmp/sockets
  vendor/bundle
  public/system
  public/uploads
)

# Generate binstubs
set :bundle_binstubs, nil

# Default value for keep_releases is 5
set :keep_releases, 10

# Capistrano DB settings
# ==============================================================================
# if you want to remove the local dump file after loading
set :db_local_clean, true

# if you want to remove the dump file from the server after downloading
set :db_remote_clean, true

# if you are paranoid and want to prevent any push operation to the server
set :disallow_pushing, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :finished, 'airbrake:deploy'

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end
end
