require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


Mike = Manager.new("Mike", 45, "Chicago")
Dave = Employee.new("Dave", "Mike", 35)
Sara = Employee.new("Sara", "Mike", 57)
Chris = Employee.new("Chris", "Sam", 52)
Sam = Manager.new("Sam", 47, "NY")
Ashley = Employee.new("Ashley", "Sam", 60)

# Employee.all
# Employee.paid_over(50)
# p Employee.find_by_department("NY")
# Manager.all_departments
# p Manager.average_age
p Chris.tax_bracket 



# binding.pry
puts "done"
