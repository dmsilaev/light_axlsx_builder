require 'test_helper'

class TestBuilder < Minitest::Test
  def setup
    @building_object = EasyAxlsx::Builder.build
  end

  def test_build_object
    assert(@building_object.is_a? EasyAxlsx::Building)
  end
end
