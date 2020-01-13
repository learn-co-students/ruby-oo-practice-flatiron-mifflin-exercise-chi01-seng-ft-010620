class Manager
    attr_reader :name, :age, :department

    @@all = []

    def initialize(name, age, department)
        @name = name 
        @age = age
        @department = department 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def employees
        Employee.all { |employees| employees.manager == self}
    end 

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, self, salary)
    end 

    def self.all_departments
        @@all.map { |managers| managers.department}
    end 

    def self.average_age
        ages = @@all.map { |managers| managers.age}
        all_ages = ages.sum
        all_ages / ages.count
    end 
end
