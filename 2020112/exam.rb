class Exam
  def math=(math)
    @math = math
  end

  def math
    @math
  end
end

exam = Exam.new
exam.math = 100
p exam.math
