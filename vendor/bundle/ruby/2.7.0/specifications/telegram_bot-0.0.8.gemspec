# -*- encoding: utf-8 -*-
# stub: telegram_bot 0.0.8 ruby lib

Gem::Specification.new do |s|
  s.name = "telegram_bot".freeze
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jos\u00E9 Tom\u00E1s Albornoz".freeze]
  s.date = "2018-03-24"
  s.description = "Still in development. Simple client for Telegram's Bot API".freeze
  s.email = ["jojo@eljojo.net".freeze]
  s.homepage = "https://github.com/eljojo/telegram_bot".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Simple client for Telegram's Bot API".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<excon>.freeze, [">= 0.30.0"])
    s.add_runtime_dependency(%q<virtus>.freeze, [">= 1.0.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.10"])
  else
    s.add_dependency(%q<excon>.freeze, [">= 0.30.0"])
    s.add_dependency(%q<virtus>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.10"])
  end
end
