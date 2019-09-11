
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/moneybutton/version"

Gem::Specification.new do |gem|
  gem.name          = "omniauth-moneybutton"
  gem.version       = Omniauth::Moneybutton::VERSION
  gem.authors       = ["Ryan Wold"]
  gem.email         = ["wold@afomi.com"]

  gem.summary       = %q{OmniAuth strategy for Money Button}
  gem.description   = %q{OmniAuth strategy for Money Button}
  gem.homepage      = "https://github.com/afomi/omniauth-moneybutton"
  gem.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "omniauth-oauth2", "~> 1.6"
  gem.add_development_dependency "bundler", "~> 1.17"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
end
