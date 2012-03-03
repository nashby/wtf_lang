# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wtf_lang/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vasiliy Ermolovich"]
  gem.email         = "younash@gmail.com"
  gem.description   = %q{An awesome language detector}
  gem.summary       = %q{Can't stop dreaming about an easy language detector? Just use wtf_lang!}
  gem.homepage      = "https://github.com/nashby/wtf_lang"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "wtf_lang"
  gem.require_paths = ["lib"]
  gem.version       = WtfLang::VERSION

  gem.add_dependency('json')
end
