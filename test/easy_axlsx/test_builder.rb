require 'test_helper'
require 'pry'

class TestBuilder < Minitest::Test
  def setup
    @row_items = (1...3).map { |i| ClassTest.new(id: i, name: "Name#{i}", last_name: "Last Name #{i}") }
    @created_object = EasyAxlsx::Builder.build @row_items
  end

  def test_equal_rows
    package = Axlsx::Package.new
    building_object = EasyAxlsx::Building.new row_items: @row_items, package: package

    # FIXME: assert_equal error
    assert_equal(@created_object.row_items, building_object.row_items)
  end
end
