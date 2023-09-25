class ClassroomsController < ApplicationController
    def index
        @classrooms = Classroom.all
    end

    def new
        @classroom = Classroom.new
    end

    def create
        @classroom = Classroom.new(classroom_params)
        if @classroom.save
            redirect_to classrooms_path
        else
            render :new
        end
    end

    private
    def classroom_params
        params.require(:classroom).permit(:name, :cradit, :grade)
    end
end
