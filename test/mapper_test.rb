require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/mapper"

class MapperTest < Minitest::Test
  def test_it_can_encode_a
    dots = ["0.", "..", ".."]
    mapper = Mapper.new
    result = mapper.encode("a")
    assert_equal dots, result
  end

  def test_it_can_encode_b
    dots = ["0.", "0.", ".."]
    mapper = Mapper.new
    result = mapper.encode("b")
    assert_equal dots, result
  end

end
