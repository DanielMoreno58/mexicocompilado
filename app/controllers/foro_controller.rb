class ForoController < ApplicationController

  def index
    @questions = Question.all
  end

  def my_questions
    if user_signed_in?
      @questions = Question.where user_id: current_user.id
      render 'my-questions'
    else
      redirect_to new_user_session_path
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new question_params
    if @question.save
      redirect_to foro_index_path
    else
      render 'new'
    end
  end

  def show
    @question = Question.find params[:id]
    @answers = @question.answers.all
  end

  private

  def question_params
    params.require(:question).permit(:question_name, :content)
  end
end
