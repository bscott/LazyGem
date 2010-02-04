require 'rake'
 
Gem::Specification.new do |s|
  s.name = "LazyGem"
  s.version = File.read('VERSION').strip
  s.date = Date.today
  s.rubyforge_project = "LazyGem"
 
  s.author = "Brian Scott"
  s.email = "brainscott@gmail.com"
  s.homepage = "http://github.com/brainscott"
 
  s.description = "Auto Installs gems that you are subscribed to on gemcutter.org."
  s.summary = "Auto Installs gems that you are subscribed to on gemcutter.org. " +
              "Supports MAC OS only but can be modified. " +
              "Great, if you are moving to a new system and don't want to install each of your favorite gems"
 
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = "1.3.5"
  s.add_dependency("simple-rss")
  
  s.has_rdoc = true 
  s.extra_rdoc_files = FileList["{doc}/**/*", "README.rdoc"].to_a
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "LazyGem", "--main", "README.rdoc"]
 
end