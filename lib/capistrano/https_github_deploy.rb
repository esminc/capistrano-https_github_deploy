require "capistrano/https_github_deploy/version"

module Capistrano
  module HttpsGithubDeploy
  end
end

load Pathname.new(__dir__).join('https_github_deploy', 'tasks', 'https_github_deploy.rake')
