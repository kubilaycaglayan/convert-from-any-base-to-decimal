def convert_from_decimal_to_any_base(value, base)
  value.freeze
  n = 0
  quotient = value

  while (quotient / base) > 0
    quotient = quotient / base
    n += 1
  end

  result = []

  while n >= 0
    quotient = (value / (base ** n)).to_i
    remainder = value % (base ** n)

    result << quotient
    value = remainder

    n -= 1
  end

  puts result.join
end

convert_from_decimal_to_any_base(10, 2) # 1010
convert_from_decimal_to_any_base(231, 2) # 11100111
convert_from_decimal_to_any_base(231, 3) # 22120
convert_from_decimal_to_any_base(231, 4) # 3213
