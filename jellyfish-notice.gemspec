$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'jellyfish_notice/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'jellyfish-notice'
  s.version     = JellyfishNotice::VERSION
  s.authors     = ['mafernando']
  s.email       = ['fernando_michael@bah.com']
  s.homepage    = 'http://www.projectjellyfish.org/'
  s.summary     = 'Jellyfish Notification'
  s.description = 'A notification system for Project Jellyfish'
  s.license     = 'APACHE'
  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.add_dependency 'rails'
  s.add_dependency 'dotenv-rails'
end
