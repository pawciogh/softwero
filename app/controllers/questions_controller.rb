class QuestionsController < ApplicationController
    before_action :set_question, only: %i[ show edit update destroy update_counter ]

def index
    @questions = Question.all
end

def show
end

def new
    @question = Question.new
    @question.answers.build
end

def edit
end

def create
    @question = Question.new(question_params)
    
    respond_to do |format|
        if @question.save
            format.html { redirect_to question_url(@question), notice: 'Flashacard was successfully created.' }
            format.json { render :show, status: :created, location: @question }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @question.errors, status: :unprocessable_entity }
        end
      end
    end

def update_counter
  if params[:count] == "1"
    @question.increment!(:counter)
  elsif params[:count] == "0"
    @question.decrement!(:counter)
  end
  render plain: "OK"
end

def update
  respond_to do |format|
   if @question.update(question_params)
      format.html { redirect_to question_url(@question), notice: "question was successfully updated." }
      format.json { render :show, status: :ok, location: @question }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @question.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
    @question.destroy
    espond_to do |format|
        format.html { redirect_to questions_url, notice: "question was successfully destroyed." }
        format.json { head :no_content }
      end
end

private

def set_question
    @question = Question.find(params[:id])
end

def question_params
    params.require(:question).permit(:content, :counter, :course_id, :category_id, :some_param, answers_attributes: [:content])
end


end