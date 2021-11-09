class School
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
       if @roster[grade]
            @roster[grade] << student_name
       else
            @roster[grade] = []
            @roster[grade] << student_name
       end
    end

    def grade(grade)
        if @roster[grade]
            @roster[grade]
        else
            []
        end
    end

    def sort
        @roster.each do |grade, students|
            students.sort! do |a,b|
                a <=> b
            end
        end
    end
end

# school = School.new("test school")
# school.add_student("tee",10)

# p school.roster