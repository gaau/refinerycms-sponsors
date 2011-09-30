Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Ole Gunnar Tveit"]
  s.email             = 'olegunnar@gmail.com'
  s.homepage          = "https://github.com/gaau/refinerycms-sponsors"
  s.name              = 'refinerycms-sponsors'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Sponsors engine for Refinery CMS'
  s.date              = '2011-09-29'
  s.summary           = 'Sponsors engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
  
  # dependency
  s.add_dependency    'refinerycms-core',   '~> 1.0.3'
end
