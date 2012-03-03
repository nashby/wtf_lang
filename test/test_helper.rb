require 'minitest/autorun'
require 'minitest/spec'
require 'vcr'
require 'webmock'

require 'wtf_lang'

VCR.config do |c|
  c.cassette_library_dir = File.join(File.dirname(__FILE__), '..', 'cassettes')
  c.default_cassette_options = {:record => :new_episodes}
  c.stub_with :webmock
end
