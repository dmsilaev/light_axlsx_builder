if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'vendor/'
  end
end

require 'bundler/setup'
Bundler.require

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

require 'minitest/reporters'

Minitest::Reporters.use!
require 'minitest/autorun'
