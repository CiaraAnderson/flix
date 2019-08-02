class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
       @course.image.create(course_params)
 
  end

  private

  def course_params
    params.require(:course).permit(:image)
  end
end
