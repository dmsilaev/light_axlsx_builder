require 'test_helper'

class TestEasyAxlsx < Minitest::Test
  def setup
    @row_items = (1...3).map { |i| ClassTest.new(id: i, name: "Name#{i}", last_name: "Last Name #{i}") }
    @building_object = EasyAxlsx.build @row_items
  end

  def test_build_object
    assert(@building_object.is_a? EasyAxlsx::Building)
  end
end
