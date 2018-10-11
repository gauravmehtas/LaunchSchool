# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'


def swap_chars(string)
  string[0], string[-1] = string[-1], string[0]
  string
end

def swap(string)
  result = string.split.map do |x|
    swap_chars(x)
  end

  result.join(' ')
end

puts swap('Oh what a wonderful day it is')
