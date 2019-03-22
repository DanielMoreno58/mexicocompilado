class AnswersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    @question = Question.find(params[:foro_id])
    @answer = @question.answers.create(answer_params)
    redirect_to foro_path(params[:foro_id])
  end

  def new
    @answer = Answer.new answer_params
    if @answer.save
      redirect_to foro_index_path
    else
      render 'foro#index'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_description)
  end
end
