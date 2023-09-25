class Course < ApplicationRecord
  
  def grade_point
    case grade
    when 'A'
      4.0
    when 'B'
      3.0
    when 'C'
      2.0
    when 'D'
      1.0
    else
      0.0
    end
  end

  def self.calculate_gpa(student)
    total_credit_hours = 0
    total_grade_points = 0

    student.courses.each do |course|
      total_credit_hours += course.credit_hours
      total_grade_points += course.credit_hours * course.grade_point
    end

    total_credit_hours.zero? ? 0.0 : total_grade_points / total_credit_hours
  end
end
