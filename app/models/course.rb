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
    when 'F'
      0.0
    when 'S'
      4.0 # Pass
    when 'Z'
      0.0 # Fail
    else
      0.0
    end
  end

  def self.calculate_gpa(courses)
    total_credit_hours = 0
    total_grade_points = 0

    courses.each do |course|
      total_credit_hours += course.credit_hours
      total_grade_points += course.credit_hours * course.grade_point
    end

    total_credit_hours.zero? ? 0.0 : total_grade_points / total_credit_hours
  end
end

