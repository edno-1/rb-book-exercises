# calculates a monthly payment rate for a loan
# based on user input loan amount, APR, and loan duration

require 'yaml'
MESSAGES = YAML.load_file('loan_calculator.yml')

def prompt(message) # puts user prompts
  puts "=> #{message}"
end

def valid_number?(num) # validates user input values as acceptable numbers
  if num.to_i.to_s == num || num.to_f.to_s == num
    true
  else
    prompt(MESSAGES["invalid"])
    false
  end
end

def apr_to_monthly(apr) # converts apr to monthly interest rate
  (apr.to_f / 100) / 12
end

def loan_dura(years) # converts loan duration from years to months
  years.to_f * 12
end

# calcs monthly payment
def monthly_payment(loan_amount, monthly_rate, loan_duration)
  loan_amount *
  (monthly_rate /
  (1 - (1 + monthly_rate)**(-loan_duration)))
end

prompt(MESSAGES['welcome'])

loan_amount = nil
monthly_rate = nil
loan_duration = nil
loop do
  prompt(MESSAGES['amount'])
  loan_amount = gets.chomp
  break if valid_number?(loan_amount)
end
loop do
  prompt(MESSAGES['apr'])
  apr = gets.chomp
  if valid_number?(apr)
    monthly_rate = apr_to_monthly(apr)
    break
  end
end
loop do
  prompt(MESSAGES['duration'])
  time_scale = gets.chomp
  if time_scale != 'years' && time_scale != 'months'
    prompt(MESSAGES['invalid'])
    next
  end
  prompt(MESSAGES['duration_specific'] + " #{time_scale}?")
  loan_durat = gets.chomp
  next if !valid_number?(loan_durat)
  if time_scale == 'years'
    loan_duration = loan_dura(loan_durat)
  else
    loan_duration = loan_durat
  end
  break
end

prompt(MESSAGES['final'])
prompt("$ #{format('%.2f', monthly_payment(loan_amount.to_f, monthly_rate.to_f, loan_duration.to_f))}")
