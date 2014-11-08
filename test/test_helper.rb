if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'vendor/'
  end
end

require 'bundler/setup'
Bundler.require

require 'minitest_helper'
