require 'test_helper'

class TestLightAxlsxBuilder < Minitest::Test
  def test_build
    assert(LightAxlsxBuilder.build == 'a')
  end
end
