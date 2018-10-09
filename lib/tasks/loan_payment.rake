desc "Calculate monthly loan payments"
include ActionView::Helpers::NumberHelper
task :loan_payment do
  path_to_apr = Rails.root + "lib/input_files/loan_payment_apr.txt"
  path_to_payment_years = Rails.root + "lib/input_files/loan_payment_years.txt"
  path_to_payment_principal = Rails.root + "lib/input_files/loan_payment_principal.txt"
  
  apr = open(path_to_apr).read.gsub("\n", "")
  loan_payment_years = open(path_to_payment_years).read.gsub("\n", "")
  payment_principal = open(path_to_payment_principal).read.gsub("\n", "")
  
  apr_f = apr.to_f
  loan_payment_years_f = loan_payment_years.to_f
  payment_principal_f = payment_principal.to_f.round(2)
  monthly_payment = (apr_f*payment_principal_f/(1-(1+apr_f)**(-1*loan_payment_years_f*12))).round(2)
  
  ap("APR: #{apr_f}")
  ap("Number of Years: #{loan_payment_years}")
  ap("Principal: $#{payment_principal_f}")
  ap("Monthly Payment: $#{monthly_payment}")
  
end
