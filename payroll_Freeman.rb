############################################################
#
#  Name:        Timbre Freeman
#  Assignment:  Payroll
#  Date:        09/25/2019
#  Class:       CIS 282
#  Description: print the users payroll with the info given
#
############################################################

# Welcome screen
puts ""
puts "Welcome to the Payroll Calculator"
puts ""
# Ask user for info
print "Enter Employee's name: "
employee_name = gets.chomp
puts ""
print "Enter Employee's hours worked: "
employee_hours = gets.chomp.to_i
puts ""
print "Enter Employee's hourly pay rate: "
employee_hourly_pay_rate = gets.to_f
puts ""
print "Enter Federal tax rate: "
federal_tax = gets.to_f
# check if given a % or decimal
if (federal_tax < 1)
  federal_tax = federal_tax*100
end
puts ""
print "Enter State tax rate: "
state_tax = gets.to_f
# check if given a % or decimal
if (state_tax < 1)
  state_tax = state_tax*100
end
puts ""
# calculate the output
employee_gross_pay = employee_hours*employee_hourly_pay_rate
employee_federal_withholding = employee_gross_pay*(federal_tax/100)
employee_state_withholding = employee_gross_pay*(state_tax/100)
employee_deduction = employee_federal_withholding+employee_state_withholding
employee_net_pay = employee_gross_pay-employee_deduction
# print the output with format
puts "Employee Name: #{employee_name}"
puts "Hours Worked: #{format("%.1f",employee_hours)}"
puts "Pay Rate: $#{format("%.2f", employee_hourly_pay_rate)}"
puts "Gross Pay: $#{format("%.2f", (employee_gross_pay))}"
puts "Deductions:"
puts "  Federal Withholding (#{format("%.1f",federal_tax)}%): $#{format("%.2f",employee_federal_withholding)}"
puts "  State Withholding (#{format("%.1f",state_tax)}%): $#{format("%.2f",employee_state_withholding)}"
puts "  Total Deduction: $#{format("%.2f",employee_deduction)}"
puts "Net Pay: $#{format("%.2f",employee_net_pay)}"

