require 'yaml'
MESSAGES = YAML.load_file('calculator_message.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  validated = []
  num.chars.each do |x|
    validated << x if x.match(/[0-9.]/)
  end
  validated.join('') == num
end

def operator_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['en']['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()
  break unless name.empty?()
  prompt(MESSAGES['en']['valid_name'])
end

prompt("Hello #{name}")

# main loop

loop do
  number_one = ''

  loop do # first number and validation
    prompt(MESSAGES['en']['first_number'])
    number_one = Kernel.gets().chomp()
    p number_one

    break if valid_number?(number_one) && number_one.chars.last != '.'
    prompt(MESSAGES['en']['invalid_number'])
  end

  number_two = ''
  
  loop do # second number and validation
    prompt(MESSAGES['en']['second_number'])
    number_two = Kernel.gets().chomp()
    p number_two
    break if valid_number?(number_two) && number_two.chars.last != '.'
    prompt(MESSAGES['en']['invalid_number'])
  end

  if number_one.chars.include?('.')
    number_one = number_one.to_f
    p number_one
  else
    number_one = number_one.to_i
    p number_one
  end

  if number_two.chars.include?('.')
    number_two = number_two.to_f
    p number_two
  else
    number_two = number_two.to_i
    p number_two
  end

  operator_prompt = <<-MSG
    What operation you will like to perform?
    1. Add
    2. Subtract
    3. Multiply
    4. Divide

  MSG

  prompt(operator_prompt)

  operator = ''

  loop do # operator selection and validation
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator) # what is %w
    prompt(MESSAGES['en']['correct_select'])
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

  sleep 2

  result =  case operator
            when '1'
              number_one + number_two
            when '2'
              number_one - number_two
            when '3'
              number_one * number_two
            when '4'
              number_one.to_f() / number_two.to_f()
            end

  prompt("The answer is #{result}")

  prompt(MESSAGES['en']['repeat'])

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['en']['thanks'])

