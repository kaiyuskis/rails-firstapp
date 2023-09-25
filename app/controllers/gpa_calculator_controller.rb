class GpaCalculatorController < ApplicationController
  def calculate
    @courses = Course.all
    @gpa = Course.calculate_gpa(@courses)
  end
end
