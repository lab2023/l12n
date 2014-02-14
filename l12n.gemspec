$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'l12n/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'l12n'
  s.version     = L12n::VERSION
  s.authors     = ['lab2023']
  s.email       = ['info@lab2023.com']
  s.homepage    = 'https://github.com/kebab-project/l12n'
  s.summary     = 'Locations data'
  s.description = 'Locations data'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md', 'CHANGELOG.md']

  s.add_dependency 'rails', '~> 4.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'

  s.test_files = Dir['spec/**/*']
end
