class TopController < ApplicationController

  def index
    @questions = Question.order('created_at DESC').page(params[:page]).per(10)
  end
end
