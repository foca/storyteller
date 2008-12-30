# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{storyteller}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nicol\303\241s Sanguinetti"]
  s.date = %q{2008-12-30}
  s.description = %q{Minimalist user story runner on top of test/unit}
  s.email = %q{contacto@nicolassanguinetti.info}
  s.files = ["lib", "lib/storyteller.rb", "Rakefile", "README.markdown", "storyteller.gemspec", "test", "test/fixtures", "test/fixtures/test_example.rb", "test/test_storyteller.rb", "VERSION.yml"]
  s.homepage = %q{http://nicolassanguinetti.info}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{storyteller}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Minimalist user story runner on top of test/unit}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jeremymcanally-context>, [">= 0"])
    else
      s.add_dependency(%q<jeremymcanally-context>, [">= 0"])
    end
  else
    s.add_dependency(%q<jeremymcanally-context>, [">= 0"])
  end
end
