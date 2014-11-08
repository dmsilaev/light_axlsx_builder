require 'test_helper'

class TestEasyAxlsx < Minitest::Test
  def setup
    @building_object = EasyAxlsx.build
  end

  def test_build_object
    assert(@building_object.is_a? EasyAxlsx::Building)
  end

  def test_include_class_methods
    assert(TestIncludeClass.methods.include? :easy_axlsx_fields)
  end
end

class TestIncludeClass
  include EasyAxlsx::ClassConfig
end
