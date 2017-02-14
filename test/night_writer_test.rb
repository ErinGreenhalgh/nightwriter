require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test
  def setup
    @writer = NightWriter.new
  end

  def test_it_can_encode_two_characters
    dots = [[[1,0], [0, 0], [0, 0]],
            [[1,0], [0, 0], [0, 0]]
           ]

    assert_equal dots, @writer.to_braille(["a", "a"])
  end

  def test_it_can_decode_two_characters
    dots = [[[1,0], [0, 0], [0, 0]],
            [[1,0], [0, 0], [0, 0]]
           ]

    assert_equal ["a", "a"], @writer.to_english(dots)
  end
end
