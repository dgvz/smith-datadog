Gem::Specification.new do |s|
  s.name     = 'smith-datadog'
  s.version  = '0.7.1'
  s.version  = "#{s.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  s.date     = Time.now.strftime("%Y-%m-%d")
  s.platform = Gem::Platform::RUBY

  s.summary = "Monitor smith agents, reporting to Datadog"
  s.description = "Integrate smith agent monitoring with Datadog"

  s.homepage = "https://github.com/dgvz/smith-datadog"
  s.license = "GPL-3.0"

  s.authors = ["Richard Heycock", "Rob Sharp"]
  s.email   = "rob.sharp@digivizer.com"

  s.add_dependency "smith", "~> 0.8", ">= 0.8.3"
  s.add_dependency "dogapi", '~> 1.2'
  s.add_dependency "sys-proctable", "~> 0.9"
  s.add_dependency "activesupport", "~> 4.0"

  s.add_development_dependency 'yard', "~> 0.8.7"
  s.add_development_dependency 'bundler', "~> 1"
  s.add_development_dependency 'ruby_dep', '~> 1.1'
  s.add_development_dependency 'rake', "~> 10"
  s.add_development_dependency 'rspec', '~> 3.5'

  s.executables = %w{smith-datadog}

  s.files = `git ls-files -z bin doc`.split("\0")

  begin
    require 'ruby_dep/travis'
    s.required_ruby_version = RubyDep::Travis.new.version_constraint
  rescue LoadError
    puts 'Unable to set required_ruby_version'
  end
end
