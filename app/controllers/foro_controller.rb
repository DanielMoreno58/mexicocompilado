class ForoController < ApplicationController

  def index
    @questions = Question.all
  end

  def my_questions
    @questions = Question.where user_id: current_user.id
    render 'my-questions'
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

  def show
    @question = Question.find params[:id]
  end

  private

  def question_params
    params.require(:question).permit(:question_name, :content)
  end
end
