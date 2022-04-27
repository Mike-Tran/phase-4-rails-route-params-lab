class StudentsController < ApplicationController

  def index
    students =  if params[:name]
                  [Student.find_by(last_name: params[:name].capitalize)]
                else
                  Student.all
                end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end
