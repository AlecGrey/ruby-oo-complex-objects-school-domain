# code here!
require 'pry'

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        roster = @roster.dup
        roster.each do |k,v|
            roster[k] = roster[k].sort
        end
        roster
    end


end

# nautilus = School.new("nautilus")
# nautilus.add_student("Alec Grey", 1)