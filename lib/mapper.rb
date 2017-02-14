class Mapper
    def both_off
      [0, 0]
    end

    def left_on
      [1, 0]
    end

    def right_on
      [0, 1]
    end

    def both_on
      [1, 1]
    end
    def dictionary
      {"a" => [left_on, both_off, both_off],
       "b" => [left_on, left_on, both_off],
       "c" => [both_on, both_off, both_off],
       "d" => [both_on, right_on, both_off],
       "e" => [left_on, right_on, both_off],
       "f" => [both_on, left_on, both_off],
       "g" => [both_on, both_on, both_off],
       "h" => [left_on, both_on, both_off],
       "i" => [right_on, left_on, both_off],
       "j" => [right_on, both_on, both_off],
       "k" => [left_on, both_off, left_on],
       "l" => [left_on, left_on, left_on],
       "m" => [both_on, both_off, left_on],
       "n" => [both_on, right_on, left_on],
       "o" => [left_on, right_on, left_on],
       "p" => [both_on, left_on, left_on],
       "q" => [both_on, both_on, left_on],
       "r" => [left_on, both_on, left_on],
       "s" => [right_on, left_on, left_on],
       "t" => [right_on, both_on, left_on],
       "u" => [left_on, both_off, both_on],
       "v" => [left_on, left_on, both_on],
       "x" => [both_on, both_off, both_on],
       "y" => [both_on, right_on, both_on],
       "z" => [left_on, right_on, both_on],
       "w" => [right_on, both_on, right_on]}
    end

    def encode(input)
      dictionary[input]
    end

    def decode(input)
      dictionary.key(input)
    end
end
