require 'test_helper'

class TestClassConfig < Minitest::Test
  def test_include_easy_axlsx_fields
    assert(ClassTest.easy_axlsx_fields == [:name, :last_name])
  end

  def test_error_unless_instance_method
    assert_raises NoMethodError do
      self.class.const_set :TestErrorClass, Class.new {
        include EasyAxlsx::ClassConfig

        as_easy_axlsx_fields :non_existent_method
      }
    end
  end
end

# TODO: Вынести тестовые классы из файлов

class ClassTest
  include EasyAxlsx::ClassConfig

  def name
  end

  def last_name
  end

  as_easy_axlsx_fields :name, :last_name
end
