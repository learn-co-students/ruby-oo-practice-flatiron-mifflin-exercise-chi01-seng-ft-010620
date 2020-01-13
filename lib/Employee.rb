require "pry"

class Employee
    attr_reader :name, :manager, :salary

    @@all = []

    def initialize(name, manager, salary)
        @name = name
        @manager = manager
        @salary = salary 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.paid_over(amount)
        @@all.select { |employees| employees.salary > amount}
    end 

    def self.find_by_department(department)
        department_manager = Manager.all.find {|managers| managers.department == department}
        @@all.find do |employee|
        employee.manager == department_manager.name
        end 
    end 

    def tax_bracket
        @@all.select do |employees| 
            employees.salary.between?(self.salary - 10, self.salary + 10)
        end 
    end 


end
