class Mapper
    def bothOff
      [0, 0]
    end

    def leftOn
      [1, 0]
    end

    def rightOn
      [0, 1]
    end

    def bothOn
      [1, 1]
    end
    def base_characters
      {"a" => [leftOn, bothOff, bothOff],
       "b" => [leftOn, leftOn, bothOff],
       "c" => [bothOn, bothOff, bothOff],
       "d" => [bothOn, rightOn, bothOff],
       "e" => [leftOn, rightOn, bothOff],
       "f" => [bothOn, leftOn, bothOff],
       "g" => [bothOn, bothOn, bothOff],
       "h" => [leftOn, bothOn, bothOff],
       "i" => [rightOn, leftOn, bothOff],
       "j" => [rightOn, bothOn, bothOff]}
    end

    def encode(input)
      mapping = {"a" => ["0.", "..", ".."],
                 "b" => ["0.", "0.", ".."]}

      mapping[input]
    end
end
