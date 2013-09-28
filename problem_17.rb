class NumberToWord

  WORDS = Hash[*[
    0, 'zero',
    1, 'one',
    2, 'two',
    3, 'three',
    4, 'four',
    5, 'five',
    6, 'six',
    7, 'seven',
    8, 'eight',
    9, 'nine',
    10, 'ten',
    11, 'eleven',
    12, 'twelve',
    13, 'thirteen',
    14, 'fourteen',
    15, 'fifteen',
    16, 'sixteen',
    17, 'seventeen',
    18, 'eighteen',
    19, 'nineteen',
    20, 'twenty',
    30, 'thirty',
    40, 'forty',
    50, 'fifty',
    60, 'sixty',
    70, 'seventy',
    80, 'eighty',
    90, 'ninety',
    100, 'hundred',
    1000, 'thousand'
  ]]

  def initialize(number)
    @number = number
  end

  def translate
    out = ''
    out += thousand if thousand
    out += ' ' if thousand && (hundred || below_hundred)
    out += hundred if hundred
    out += ' and ' if hundred && below_hundred
    out += below_hundred if below_hundred

    out
  end

private
  def thousand
    if @number >= 1000
      WORDS[@number / 1000] + ' ' + WORDS[1000]
    end
  end

  def hundred
    if @number >= 100
      n = @number % 1000
      WORDS[n / 100] + ' ' + WORDS[100] unless n.zero?
    end
  end

  def below_hundred
    n = @number % 100
    if (n >= 1 && n <= 20) || (n > 20 && n < 100 && (n % 10).zero?)
      WORDS[n]
    elsif n > 20 && n < 100
      WORDS[(n / 10) * 10] + '-' + WORDS[n % 10]
    end
  end
end

puts (1..1000).reduce(0) { |memo, i| memo + NumberToWord.new(i).translate.scan(/[a-z]/i).size }

