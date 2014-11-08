require 'test_helper'

class TestAbstraxlsx < Minitest::Test
  def setup
    @building_object = Abstraxlsx.build
  end

  def test_build_object
    assert(@building_object.is_a? Abstraxlsx::Building)
  end

  def test_include_class_methods
    assert(TestIncludeClass.methods.include? :abstraxlsx_config_name)
  end
end

class TestIncludeClass
  include Abstraxlsx::ClassConfig
end
