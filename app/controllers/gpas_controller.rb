class GpasController < ApplicationController
  def index
    classrooms = Classroom.all
    sum = 0
    sum_credit = 0
    for classroom in classrooms do
      sum += Classroom::GRADE_POINTS[classroom.grade] * classroom.credit
      sum_credit += classroom.credit
    end
    @gpa = sum / sum_credit
  end
end
