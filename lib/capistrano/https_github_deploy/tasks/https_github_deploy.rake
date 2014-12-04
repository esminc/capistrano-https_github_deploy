namespace :https_github_deploy do
  task :setup do
    token = case
    when (file_path = fetch(:github_token_file_path))
      deploy_config = YAML.load_file(File.expand_path(file_path))

      "#{deploy_config['user']}:#{deploy_config['token']}"
    when (env_name = fetch(:github_token_env))
      ENV[env_name.to_s]
    else
      nil
    end

    next unless token

    github_repo = fetch(:github_repo)

    set :repo_url, "https://#{token}@github.com/#{github_repo}.git"
  end
end

before 'deploy:starting', 'https_github_deploy:setup'
