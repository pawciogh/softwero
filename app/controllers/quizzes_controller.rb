class QuizzesController < ApplicationController
  
  def new
  end
  
  def show
    number = params[:questions].to_i
    questions = Course.where(id: params[:course][:course_id]).includes(:questions).map(&:questions).flatten
    questions.shuffle! if params[:random]
    @questions = questions.take(number)
  end

end

