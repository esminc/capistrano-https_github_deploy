# Capistrano::HttpsGithubDeploy

Capistrano plugin when use https github repository deploy.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-https_github_deploy', require: false
```

And then execute:

    $ bundle

Add your Capfile:

```
require 'capistrano/https_github_deploy'
```

## Usage

### Common Setting

set 'username/repo_name' to :github_repo in your deploy.rb.

```
set :github_repo, "#{owner}/#{repo_name}"
```

### Use File

First, create github token file
First, create a file(e.g. ~/.github_token), such as the following.

```
user: user_name
token: XXXXXXXXXXXXXXXXXXXXXXX
```

Second, set token file path to :github_token_file_path in your deploy.rb.

```
set :github_token_file_path, "/home/user_name/.github_token"
```

### Use Env

Set env name to :github_token_env in your deploy.rb.

```
set :github_token_env, 'GITHUB_TOKEN'
```

And, you set GITHUB_TOKEN, such as the following.

```
GITHUB_TOKEN='#{user_name}:#{github_token}' cap production deploy
```

## Contributing

1. Fork it ( https://github.com/esminc/capistrano-https_github_deploy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
