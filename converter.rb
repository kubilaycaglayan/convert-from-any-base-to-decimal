module Converter
  def convert(string_input, base, decimal = 0, index = 1)
    symbol = string_input[-index]
    return decimal if symbol.nil?

    place_value = base**(index - 1)
    face_value = symbol.to_i(base)
    symbol_value = face_value * place_value
    new_decimal = symbol_value + decimal
    convert(string_input, base, new_decimal, index + 1)
  end
end

# place value = base ** reverse_index
# face value = symbol.to_i(base)
# symbol value = face value * place value
