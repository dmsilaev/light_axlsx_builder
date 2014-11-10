require 'test_helper'

class TestBuilding < Minitest::Test
  def setup
    package = Axlsx::Package.new
    row_items = [1, 2]
    @building_object = EasyAxlsx::Building.new row_items: row_items, package: package
  end

  def test_initialize_object
    assert(@building_object.row_items == [1, 2])
    assert(@building_object.package.is_a? Axlsx::Package)
  end
end
