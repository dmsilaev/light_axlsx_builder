require 'test_helper'

class TestAbstraxlsx < Minitest::Test
  def setup
    @building_object = Abstraxlsx.build
  end

  def test_build_object
    assert(@building_object.is_a? Abstraxlsx::Building)
  end
end
