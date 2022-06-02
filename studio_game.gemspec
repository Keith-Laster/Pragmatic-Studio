Gem::Specification.new do |s|
  s.name         = "studio_game_prag_stud"
  s.version      = "1.0.0"
  s.author       = "Keith Laster"
  s.email        = "Lasterk9@gmail.com"
  s.homepage     = "N/A"
  s.summary      = "A game of w00ts and blams."
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE.md README.md)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec', '~> 2.8', '>= 2.8.0'
end