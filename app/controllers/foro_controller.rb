class ForoController < ApplicationController

  def index
    @questions = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    if @question.save
      redirect_to foro_index_path
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:question_name, :content)
  end
end
