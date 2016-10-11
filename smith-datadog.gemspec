Gem::Specification.new do |s|
  s.name    = 'smith-datadog'
  s.version = '0.7.1'
  s.date    = Time.now.strftime("%Y-%m-%d")

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
  s.add_development_dependency 'rake', "~> 10"
  s.add_development_dependency 'git-version-bump', '~> 0.15.1'
  s.add_development_dependency 'rspec', '~> 3.5'

  s.executables = %w{smith-datadog}

  s.files = `git ls-files -z bin doc`.split("\0")
end
