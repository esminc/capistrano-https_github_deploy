# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/https_github_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-https_github_deploy"
  spec.version       = Capistrano::HttpsGithubDeploy::VERSION
  spec.authors       = ["takkanm"]
  spec.email         = ["takkanm@gmail.com"]
  spec.summary       = %q{Capistrano plugin when use https github repository deploy}
  spec.description   = %q{Capistrano plugin when use https github repository deploy}
  spec.homepage      = "https://github.com/esminc/capistrano-https_github_deploy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~>3.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
