# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "active_enum"
  s.version = "0.9.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Meehan"]
  s.date = "2012-09-10"
  s.description = "Define enum classes in Rails and use them to enumerate ActiveRecord attributes"
  s.email = "adam.meehan@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "MIT-LICENSE"]
  s.files = ["README.rdoc", "CHANGELOG", "MIT-LICENSE"]
  s.homepage = "http://github.com/adzap/active_enum"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Define enum classes in Rails and use them to enumerate ActiveRecord attributes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
  end
end
