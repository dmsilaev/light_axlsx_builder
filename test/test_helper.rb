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

class ClassTest
  include EasyAxlsx::ClassConfig
  attr_reader :id, :name, :last_name

  def initialize(args = {})
    @id = args.fetch(:id)
    @name = args.fetch(:name)
    @last_name = args.fetch(:last_name)
  end

  def second_name
  end
  as_easy_axlsx_field :second_name

  as_easy_axlsx_fields :name, :last_name
  as_easy_axlsx_widths 1.5, 2.5, 3.5, 4
end
