require "./lib/mapper"

class NightWriter
  def initialize
    @mapper = Mapper.new
  end

  def to_braille(input)
    input.chars.map do |char|
      @mapper.encode(char)
    end
  end
end
