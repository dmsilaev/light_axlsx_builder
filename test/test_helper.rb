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
  require 'minitest/autorun'
else
  require 'minitest_helper'
end
