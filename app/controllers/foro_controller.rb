class ForoController < ApplicationController

  def index
    @foro = Question.new
  end

  def new
    @foro = Question.new
  end

  # def create
  #   @foro = current_user.questions.new(question_params)
  #   if @foro.save
  #     redirect_to @foro
  #   else
  #     render 'new'
  #   end
  # end

  # private

  # def article_params
  #   params.require(:question).permit(:question_name, :status)
  # end
end
