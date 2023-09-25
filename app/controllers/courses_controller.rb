class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to root_path, notice: 'Course was successfully added.'
    else
      render 'new'
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :credit_hours, :grade)
  end
end

