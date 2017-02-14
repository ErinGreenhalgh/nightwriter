require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test
  def test_it_can_encode_two_characters
    dots = [[[1,0], [0, 0], [0, 0]],
            [[1,0], [0, 0], [0, 0]]
          ]
    writer = NightWriter.new

    assert_equal dots, writer.to_braille("aa")
  end
end
