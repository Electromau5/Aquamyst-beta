# -*- encoding: utf-8 -*-
# stub: flexslider 2.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "flexslider"
  s.version = "2.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Constant Meiring", "Patrik Wehrli"]
  s.date = "2016-10-30"
  s.description = "Flexslider 2 Rails Gem"
  s.email = ["constant@aisleb.co.za", "patrik.wehrli@gmail.com"]
  s.files = ["LICENSE", "README.md", "lib/flexslider", "lib/flexslider.rb", "lib/flexslider/version.rb", "vendor/assets", "vendor/assets/fonts", "vendor/assets/fonts/flexslider-icon.eot", "vendor/assets/fonts/flexslider-icon.svg", "vendor/assets/fonts/flexslider-icon.ttf", "vendor/assets/fonts/flexslider-icon.woff", "vendor/assets/javascripts", "vendor/assets/javascripts/jquery.flexslider-min.js", "vendor/assets/javascripts/jquery.flexslider.js", "vendor/assets/stylesheets", "vendor/assets/stylesheets/flexslider.sass"]
  s.homepage = "http://aisleb.co.za"
  s.rubygems_version = "2.4.6"
  s.summary = "Rails wrapper for the Flexslider 2 jQuery carousel by WooThemes"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass-rails>, [">= 3.1.0"])
    else
      s.add_dependency(%q<sass-rails>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<sass-rails>, [">= 3.1.0"])
  end
end
