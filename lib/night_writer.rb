require "./lib/mapper"

class NightWriter
  def initialize
    @mapper = Mapper.new
  end

  def to_braille(input)
    input.map do |char|
      @mapper.encode(char)
    end
  end

  def to_english(input)
    input.map do |pair|
      @mapper.decode(pair)
    end
  end
end
