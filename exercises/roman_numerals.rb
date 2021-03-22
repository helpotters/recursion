#!/usr/bin/env ruby

roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def numbers_to_roman_numerals(number, roman_numerals, romanized_number = '')
  exit if number <= 0
  roman_numerals.each_key do |numeral|
    divisor, modulus = number.divmod(numeral)
    (0..divisor).each do |_i|
      romanized_number.concat(roman_numerals[numeral]) if modulus == 0
    end
    number -= numeral * divisor if numeral <= number
  end
end

numbers_to_roman_numerals(101, roman_mapping, '')
