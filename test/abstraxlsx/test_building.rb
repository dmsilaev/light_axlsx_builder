require 'test_helper'

class TestBuilding < Minitest::Test
  def setup
    @building_object = Abstraxlsx::Building.new rel_object_class: TestA, package: Axlsx::Package.new
  end

  def test_initialize_object
    assert(@building_object.rel_object_class == TestA)
    assert(@building_object.package.is_a? Axlsx::Package)
  end
end

class TestA
end

class TestB
end
