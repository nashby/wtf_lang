# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

$LOAD_PATH.unshift('lib')

require 'jeweler'
require 'wtf_lang/version'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "wtf_lang"
  gem.homepage = "http://github.com/nashby/wtf_lang"
  gem.version = WtfLang::Version::STRING
  gem.license = "MIT"
  gem.summary = %Q{An awesome language detector}
  gem.description = %Q{Can't stop dreaming about an easy language detector? Just use wtf_lang!}
  gem.email = "younash@gmail.com"
  gem.authors = ["nashby"]
  gem.files.include Dir.glob('lib/**/*.rb')
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = WtfLang::Version::STRING

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "wtf_lang #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
