class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
    @answers = @question.answers.order('created_at DESC')
  end

  def create
    @answer = Answer.create(create_params)
  end

  private
  def create_params
    params.require(:answer).permit(:question_id, :answer).merge(user_id: current_user.id)
  end
end
