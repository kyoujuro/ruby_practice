class Subject
    attr_reader :score, :name
    def initialize(args)
        @score = args[:score] || 0
        @name = args[:name]
    end
    def result()
        puts "#{name}'s avgerage is #{avg(score)}."
    end
    private
    def avg(score)
        student_num = 10.00
        score / student_num
    end
end

japanese = Subject.new(:score => 20, :name =>'Japanese')
japanese.result()