class GpaController < ApplicationController
	def index
        @gpa = Gpa.all
    end

    def new
        @gpa = Gpa.new
    end

    def create
        @gpa = Gpa.create(gpa_params)
        redirect_to gpa_path
    end

    private
    def gpa_params
        params.require(:gpa).permit(:course, :grade)
    end
end

