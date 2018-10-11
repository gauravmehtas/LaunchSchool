# def word_cap(str)
#   puts str.split.map(&:capitalize).join(' ')
# end


def word_cap(str)
  puts str.split.map { |x| x[0].upcase + x.delete(x[0]) }.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'