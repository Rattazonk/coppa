# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','coppa','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'coppa'
  s.version = Coppa::VERSION
  s.author = 'Frederik R. Vosberg'
  s.email = 'frederik.vosberg@rattazonk.com'
  s.homepage = 'http://rattazonk.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Coppa is a helper to upload files to servers'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','coppa.rdoc']
  s.rdoc_options << '--title' << 'coppa' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'coppa'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.12.1')
  s.add_runtime_dependency('net-sftp','2.1.2')
end
