require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/mapper"

class MapperTest < Minitest::Test
  def test_it_can_encode_a
    dots = [[1,0], [0, 0], [0, 0]]
    mapper = Mapper.new
    result = mapper.encode("a")
    assert_equal dots, result
  end

  def test_it_can_encode_b
    dots = [[1, 0], [1, 0], [0, 0]]
    mapper = Mapper.new
    result = mapper.encode("b")
    assert_equal dots, result
  end

  def test_it_can_translate_braille_to_a
    braille = [[1,0], [0, 0], [0, 0]]
    mapper = Mapper.new
    result = mapper.decode(braille)
    assert_equal "a", result
  end
end
