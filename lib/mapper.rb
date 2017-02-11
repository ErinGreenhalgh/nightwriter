class Mapper
    def encode(input)
      mapping = {"a" => ["0.", "..", ".."],
                 "b" => ["0.", "0.", ".."]}

      mapping[input]
    end
end
