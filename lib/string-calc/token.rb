module StringCalc
  # Abstract value object for a parsed token
  #
  Token = Struct.new(:value) do
    def ==(other)
      type == other.type &&
        value  == other.value
    end
  end
end
