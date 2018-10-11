# Problem
  # Building a mortgage calculator with three inputs 1. loan amount 2. annual percentage rate 3. loan duration.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # Loan Amount
        # Annual Percentage Rage (APR)
        # Loan Duration

      # Output
        # monthly interest rate
        # monthly payments
        # duration of loan in months

# Examples / Test Cases
  # loan Amount       APR (%)  loan duration (years)
  #   30000           1.99        5           => true
  #   -30000          0.         -22          => error on all three values
  # .....3            -3%         2           => error on loan amt & apr
  # ....33...          3.          .1         => error on loan amt & apr
  # $2000              2           1          => error on loan amt due to '$' sign
     
  # rate of interest = 2% 
  # loan duration = 5 years

  # Edge Cases
      # Format of Inputs & Validation for anything but numbers and decimal
      # should not be more than one decimal
      # any ',' to separate the number will give an error
      # Input of Negative Numbers
      # loan amount as number
      # APR in percentage / 12 for monthly interest rate
      # loan duration in years * 12 for months => convert to float 

  # Failures / Bad Input? (What To Do)
    # Display a message and not move ahead unless acceptable figure is entered

# Data Structure
    # Number

# Algorithm

  # program ask user for input. Validate inputs. change apr to monthly & loan duration from years to months
  # once all inputs are entered and validated, apply the formula to calculate monthly payments, monthly interest rate
  # duration of loan in months.
  # yml file for messages
  # welcome message and 

# Code
require 'yaml'

# seperate file containing all the messages
MESSAGES = YAML.load_file('mortgage_message.yml')

# defined method to display the messages
def prompt(message)
  puts message
end

# defined method to validate all inputs
def validator_input?(num)
  chars_to_validate = [] # initialize an array
  # conditional to push elements in array if the characters
  # matches the regex expression
  num.chars.select { |x| chars_to_validate << x if x =~ /[0-9.]/ }
  # return true if there are no more that 1 decimal and
  # the string from joining the array is equal to original
  # argument of the method. If not then it will display an error.
  chars_to_validate.select { |x| x == '.' }.length <= 1 && chars_to_validate.last != '.' &&
    chars_to_validate.join('') == num
end

# Program starts with welcome message
prompt(MESSAGES['welcome'])

# main loop

loop do
  # loop for getting loan amount, validation and input
  # conversion to float or integer

  total_loan = ''
  loop do
    prompt(MESSAGES['loan_amount'])
    total_loan = gets.chomp

    if validator_input?(total_loan)
      total_loan = if total_loan.chars.include?('.')
                    total_loan = total_loan.to_f
                  else
                    total_loan = total_loan.to_i
                  end
      break
    else
      prompt(MESSAGES['validate'])
    end
  end

  # loop for getting the apr, validating and converting apr
  # into monthly interest and further in decimal
  monthly_interest = ''
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp

    if validator_input?(apr) == true
      monthly_interest = apr.to_f / 12 / 100
      break
    else
      prompt(MESSAGES['validate'])
    end
  end

  # loop for getting the loan duration, validating and converting
  # into number of months
  months = ''
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration = gets.chomp

    if validator_input?(loan_duration)
      months = loan_duration.to_f * 12
      months = months.round(2)
      break
    else
      prompt(MESSAGES['validate_duration'])
    end
  end

  # calculation => m = p * (j / (1 - (1 + j)**(-n)))

  monthly = total_loan * (monthly_interest / (1 - (1 + monthly_interest)**-months))

  puts <<-MSG
    ----------------------------------------------------------
    Mortgage Loan Breakup:

    =>Monthly Payments = $#{monthly.round(2)}
    =>Monthly Interest Rate(%) = #{monthly_interest.round(5)}%
    =>Loan Duration in Months = #{months} months
    ----------------------------------------------------------
  MSG

  prompt(MESSAGES['again'])
  again = gets.chomp

  break unless again.downcase.start_with?('y')
end

prompt(MESSAGES['exit'])
